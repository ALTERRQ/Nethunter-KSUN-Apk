.class public Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICSIMWebViewHolder"
.end annotation


# static fields
.field private static controlsWebView:Landroid/webkit/WebView;

.field private static icsimWebView:Landroid/webkit/WebView;

.field private static udsimWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getControlsWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3159
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->controlsWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3160
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->controlsWebView:Landroid/webkit/WebView;

    .line 3161
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->controlsWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->setupWebView(Landroid/webkit/WebView;)V

    .line 3163
    :cond_0
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->controlsWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static getICSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3151
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->icsimWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3152
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->icsimWebView:Landroid/webkit/WebView;

    .line 3153
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->icsimWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->setupWebView(Landroid/webkit/WebView;)V

    .line 3155
    :cond_0
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->icsimWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static getUDSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3167
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->udsimWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3168
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->udsimWebView:Landroid/webkit/WebView;

    .line 3169
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->udsimWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->setupWebView(Landroid/webkit/WebView;)V

    .line 3171
    :cond_0
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->udsimWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private static setupWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .line 3176
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3177
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 3178
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 3179
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 3180
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 3181
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 3182
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3183
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 3184
    return-void
.end method
