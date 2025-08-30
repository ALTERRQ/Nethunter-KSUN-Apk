.class public Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# static fields
.field private static final CACERTS_FILE_SIZE:I = 0x23000

.field private static instance:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;


# instance fields
.field private final trustRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final trustStore:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->getTrustStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    .line 59
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-direct {p0, v0}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    .line 60
    iput-object v0, p0, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->instance:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    invoke-direct {v1, p0}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->instance:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    .line 51
    :cond_0
    sget-object v1, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->instance:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getTrustStore(Landroid/content/Context;)Ljava/security/KeyStore;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    const-string v0, "SystemKeyStore"

    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 111
    .local v1, "trustStore":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/thoughtcrime/ssl/pinning/R$raw;->cacerts:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    const v4, 0x23000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .local v2, "bin":Ljava/io/BufferedInputStream;
    :try_start_1
    const-string v3, "changeit"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    nop

    .line 125
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 122
    goto :goto_1

    .line 120
    :catch_1
    move-exception v4

    .line 121
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_5
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_1
    nop

    .end local p1    # "context":Landroid/content/Context;
    throw v3
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    .end local v1    # "trustStore":Ljava/security/KeyStore;
    .end local v2    # "bin":Ljava/io/BufferedInputStream;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_2
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 133
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 130
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v0

    .line 131
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 126
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_6
    move-exception v0

    .line 127
    .local v0, "kse":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .locals 5
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 97
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    goto :goto_0

    .line 102
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    return-object v0

    .line 103
    .end local v0    # "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 69
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 71
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return-object v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    return-object v1

    .line 80
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 85
    return-object v0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/security/GeneralSecurityException;
    return-object v1
.end method

.method public isTrustRoot(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 64
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 65
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
