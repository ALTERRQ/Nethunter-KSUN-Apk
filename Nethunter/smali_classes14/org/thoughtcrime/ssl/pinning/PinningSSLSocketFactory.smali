.class public Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "PinningSSLSocketFactory.java"


# instance fields
.field private final pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pins"    # [Ljava/lang/String;
    .param p3, "enforceUntilTimestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 85
    invoke-static {p1}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    move-result-object v1

    .line 86
    .local v1, "keyStore":Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 87
    .local v2, "pinningSslContext":Ljavax/net/ssl/SSLContext;
    invoke-direct {p0, v1, p2, p3, p4}, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->initializePinningTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 89
    .local v3, "pinningTrustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-virtual {v2, v0, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 91
    return-void
.end method

.method private initializePinningTrustManagers(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .param p1, "keyStore"    # Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;
    .param p2, "pins"    # [Ljava/lang/String;
    .param p3, "enforceUntilTimestampMillis"    # J

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 162
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    new-instance v1, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;-><init>(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 164
    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 6
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 104
    .local v0, "sslSock":Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_1

    if-lez p5, :cond_3

    .line 105
    :cond_1
    if-gez p5, :cond_2

    .line 106
    const/4 p5, 0x0

    .line 109
    :cond_2
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 112
    :cond_3
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    .line 113
    .local v1, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 115
    .local v2, "soTimeout":I
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 117
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 120
    :try_start_0
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v4, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 129
    return-object v0

    .line 121
    :catch_0
    move-exception v4

    .line 123
    .local v4, "iox":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_1

    .line 124
    :catch_1
    move-exception v5

    .line 126
    :goto_1
    throw v4
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 138
    const/16 p3, 0x1bb

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;->pinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 142
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 143
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .line 154
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only strict hostname verification (default)  is supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
