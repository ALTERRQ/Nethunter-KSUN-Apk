.class public Lorg/thoughtcrime/ssl/pinning/util/PinningHelper;
.super Ljava/lang/Object;
.source "PinningHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPinnedHttpClient(Landroid/content/Context;[Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pins"    # [Ljava/lang/String;

    .line 58
    :try_start_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 59
    .local v0, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;

    const-wide/16 v4, 0x0

    invoke-direct {v3, p0, p1, v4, v5}, Lorg/thoughtcrime/ssl/pinning/PinningSSLSocketFactory;-><init>(Landroid/content/Context;[Ljava/lang/String;J)V

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 62
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 64
    .local v2, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 71
    .end local v0    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getPinnedHttpsURLConnection(Landroid/content/Context;[Ljava/lang/String;Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pins"    # [Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 96
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    new-instance v1, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;

    invoke-static {p0}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->getInstance(Landroid/content/Context;)Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lorg/thoughtcrime/ssl/pinning/PinningTrustManager;-><init>(Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;[Ljava/lang/String;J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 98
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 99
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 101
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    .local v2, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 104
    return-object v2

    .line 92
    .end local v0    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to construct pinned non-https connection!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "pins":[Ljava/lang/String;
    .end local p2    # "url":Ljava/net/URL;
    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "pins":[Ljava/lang/String;
    .restart local p2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
