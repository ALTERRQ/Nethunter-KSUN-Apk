.class public Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final enforceUntilTimestampMillis:J

.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final systemKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

.field private final systemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)V
    .locals 6
    .param p1, "keyStore"    # Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
    .param p2, "pins"    # [Ljava/lang/String;
    .param p3, "enforceUntilTimestampMillis"    # J

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->pins:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->cache:Ljava/util/Set;

    .line 92
    invoke-direct {p0, p1}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->initializeSystemTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 93
    iput-object p1, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->systemKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    .line 94
    iput-wide p3, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->enforceUntilTimestampMillis:J

    .line 96
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 97
    .local v3, "pin":Ljava/lang/String;
    iget-object v4, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->pins:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "pin":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private checkPinTrust([Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->enforceUntilTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->enforceUntilTimestampMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 145
    const-string v0, "PinningTrustManager"

    const-string v1, "Certificate pins are stale, falling back to system trust."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->systemKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    invoke-static {p1, v0}, Lorg/thoughtcrime/ssl/pinning/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/X509Certificate;Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 151
    .local v0, "cleanChain":[Ljava/security/cert/X509Certificate;
    move-object v1, v0

    .local v1, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 152
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v4}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    return-void

    .line 151
    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "No valid pins found in chain!"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->systemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 135
    .local v3, "systemTrustManager":Ljavax/net/ssl/TrustManager;
    move-object v4, v3

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 134
    .end local v3    # "systemTrustManager":Ljavax/net/ssl/TrustManager;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 188
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 188
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private initializeSystemTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 2
    .param p1, "keyStore"    # Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    .line 103
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 104
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    iget-object v1, p1, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 106
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 116
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 118
    .local v1, "spki":[B
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 120
    .local v2, "pin":[B
    iget-object v3, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->pins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 121
    .local v4, "validPin":[B
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 122
    const/4 v5, 0x1

    return v5

    .line 124
    .end local v4    # "validPin":[B
    :cond_0
    goto :goto_0

    .line 126
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 127
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "spki":[B
    .end local v2    # "pin":[B
    :catch_0
    move-exception v0

    .line 128
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->cache:Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    return-void

    .line 175
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->checkPinTrust([Ljava/security/cert/X509Certificate;)V

    .line 177
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->cache:Ljava/util/Set;

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;->cache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method
