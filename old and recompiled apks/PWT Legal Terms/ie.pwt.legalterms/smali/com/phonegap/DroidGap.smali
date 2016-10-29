.class public Lcom/phonegap/DroidGap;
.super Lcom/phonegap/api/PhonegapActivity;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;,
        Lcom/phonegap/DroidGap$GapViewClient;,
        Lcom/phonegap/DroidGap$EclairClient;,
        Lcom/phonegap/DroidGap$GapClient;
    }
.end annotation


# instance fields
.field protected activityResultCallback:Lcom/phonegap/api/Plugin;

.field protected activityResultKeepRunning:Z

.field protected appView:Landroid/webkit/WebView;

.field private baseUrl:Ljava/lang/String;

.field public bound:Z

.field public callbackServer:Lcom/phonegap/CallbackServer;

.field protected cancelLoadUrl:Z

.field protected clearHistory:Z

.field protected hideLoadingDialogOnPageLoad:Z

.field protected keepRunning:Z

.field protected loadInWebView:Z

.field private loadUrlTimeout:I

.field protected loadUrlTimeoutValue:I

.field protected pluginManager:Lcom/phonegap/api/PluginManager;

.field protected root:Landroid/widget/LinearLayout;

.field protected splashscreen:I

.field private url:Ljava/lang/String;

.field private urlFile:Ljava/lang/String;

.field protected webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/phonegap/api/PhonegapActivity;-><init>()V

    .line 124
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->bound:Z

    .line 127
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 128
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 146
    iput v1, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    .line 154
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 158
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->loadInWebView:Z

    .line 162
    iput v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    .line 165
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeoutValue:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 1365
    return-void
.end method

.method static synthetic access$000(Lcom/phonegap/DroidGap;)V
    .locals 0
    .param p0, "x0"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/phonegap/DroidGap;->handleActivityParameters()V

    return-void
.end method

.method static synthetic access$100(Lcom/phonegap/DroidGap;)I
    .locals 1
    .param p0, "x0"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 117
    iget v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$108(Lcom/phonegap/DroidGap;)I
    .locals 2
    .param p0, "x0"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 117
    iget v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/phonegap/DroidGap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phonegap/DroidGap;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/phonegap/DroidGap;->getUrlFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/phonegap/DroidGap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/phonegap/DroidGap;->urlFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/phonegap/DroidGap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method private bindBrowser(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "appView"    # Landroid/webkit/WebView;

    .prologue
    .line 289
    new-instance v0, Lcom/phonegap/CallbackServer;

    invoke-direct {v0}, Lcom/phonegap/CallbackServer;-><init>()V

    iput-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    .line 290
    new-instance v0, Lcom/phonegap/api/PluginManager;

    invoke-direct {v0, p1, p0}, Lcom/phonegap/api/PluginManager;-><init>(Landroid/webkit/WebView;Lcom/phonegap/api/PhonegapActivity;)V

    iput-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    .line 292
    const-string v0, "App"

    const-string v1, "com.phonegap.App"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "Geolocation"

    const-string v1, "com.phonegap.GeoBroker"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "Device"

    const-string v1, "com.phonegap.Device"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "Accelerometer"

    const-string v1, "com.phonegap.AccelListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "Compass"

    const-string v1, "com.phonegap.CompassListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "Media"

    const-string v1, "com.phonegap.AudioHandler"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "Camera"

    const-string v1, "com.phonegap.CameraLauncher"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "Contacts"

    const-string v1, "com.phonegap.ContactManager"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "Crypto"

    const-string v1, "com.phonegap.CryptoHandler"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "File"

    const-string v1, "com.phonegap.FileUtils"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "Location"

    const-string v1, "com.phonegap.GeoBroker"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "Network Status"

    const-string v1, "com.phonegap.NetworkManager"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "Notification"

    const-string v1, "com.phonegap.Notification"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "Storage"

    const-string v1, "com.phonegap.Storage"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "Temperature"

    const-string v1, "com.phonegap.TempListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "FileTransfer"

    const-string v1, "com.phonegap.FileTransfer"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "Capture"

    const-string v1, "com.phonegap.Capture"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private getUrlFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 734
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 735
    .local v0, "p1":I
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 736
    .local v1, "p2":I
    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 737
    :cond_0
    if-gez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 738
    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v0

    .line 739
    .local v2, "p3":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v2    # "p3":I
    :cond_2
    move v2, v1

    .line 738
    goto :goto_0
.end method

.method private handleActivityParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 323
    :cond_0
    const-string v1, "splashscreen"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    .line 324
    iget v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 329
    :cond_1
    const-string v1, "hideLoadingDialogOnPageLoad"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 332
    const-string v1, "loadInWebView"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->loadInWebView:Z

    .line 335
    const-string v1, "loadUrlTimeoutValue"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    .line 336
    .local v0, "timeout":I
    if-lez v0, :cond_2

    .line 337
    iput v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeoutValue:I

    .line 341
    :cond_2
    const-string v1, "keepRunning"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 342
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/phonegap/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public cancelLoadUrl()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 468
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 478
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 485
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 488
    :cond_0
    return-void
.end method

.method public displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "button"    # Ljava/lang/String;
    .param p4, "exit"    # Z

    .prologue
    .line 1339
    move-object v2, p0

    .line 1340
    .local v2, "me":Lcom/phonegap/DroidGap;
    new-instance v0, Lcom/phonegap/DroidGap$5;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/DroidGap$5;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 510
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v2, p2

    .line 517
    :goto_0
    return v2

    .line 513
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 514
    .local v1, "p":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    move v2, p2

    .line 515
    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public getDoubleProperty(Ljava/lang/String;D)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 567
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move-wide v2, p2

    .line 574
    :goto_0
    return-wide v2

    .line 570
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 571
    .local v1, "p":Ljava/lang/Double;
    if-nez v1, :cond_1

    move-wide v2, p2

    .line 572
    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getIntegerProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 529
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v2, p2

    .line 536
    :goto_0
    return v2

    .line 532
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 533
    .local v1, "p":Ljava/lang/Integer;
    if-nez v1, :cond_1

    move v2, p2

    .line 534
    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 548
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move-object v2, p2

    .line 555
    :goto_0
    return-object v2

    .line 551
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "p":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, p2

    .line 553
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 555
    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 213
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    .line 214
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setId(I)V

    .line 216
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-static {}, Lcom/phonegap/WebViewReflect;->checkCompatibility()V

    .line 223
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "1."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$GapClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$GapClient;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    :goto_0
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$GapViewClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$GapViewClient;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/DroidGap;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 232
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 233
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 234
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 237
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 238
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 239
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 240
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 244
    .local v1, "pack":Ljava/lang/Package;
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "appPackage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/app_database/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v7, v4}, Lcom/phonegap/WebViewReflect;->setStorage(Landroid/webkit/WebSettings;ZLjava/lang/String;)V

    .line 248
    invoke-static {v2}, Lcom/phonegap/WebViewReflect;->setDomStorage(Landroid/webkit/WebSettings;)V

    .line 251
    invoke-static {v2, v7}, Lcom/phonegap/WebViewReflect;->setGeolocationEnabled(Landroid/webkit/WebSettings;Z)V

    .line 254
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-direct {p0, v4}, Lcom/phonegap/DroidGap;->bindBrowser(Landroid/webkit/WebView;)V

    .line 257
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 258
    iget-object v4, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v4, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/phonegap/DroidGap;->setContentView(Landroid/view/View;)V

    .line 262
    iput-boolean v9, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 265
    const-string v4, "url"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 267
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading initial URL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v3}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void

    .line 227
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v1    # "pack":Ljava/lang/Package;
    .end local v2    # "settings":Landroid/webkit/WebSettings;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$EclairClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$EclairClient;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 350
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUrl("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p1}, Lcom/phonegap/DroidGap;->getUrlFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/DroidGap;->urlFile:Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lcom/phonegap/DroidGap;->url:Ljava/lang/String;

    .line 353
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 354
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 355
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    .line 360
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " baseUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    move-object v1, p0

    .line 364
    .local v1, "me":Lcom/phonegap/DroidGap;
    new-instance v2, Lcom/phonegap/DroidGap$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/phonegap/DroidGap$1;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    return-void

    .line 358
    .end local v1    # "me":Lcom/phonegap/DroidGap;
    :cond_0
    iget-object v2, p0, Lcom/phonegap/DroidGap;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 431
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUrl("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    move-object v0, p0

    .line 435
    .local v0, "me":Lcom/phonegap/DroidGap;
    new-instance v3, Lcom/phonegap/DroidGap$2;

    invoke-direct {v3, p0, v0}, Lcom/phonegap/DroidGap$2;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V

    invoke-virtual {p0, v3}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 441
    new-instance v1, Lcom/phonegap/DroidGap$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/phonegap/DroidGap$3;-><init>(Lcom/phonegap/DroidGap;ILcom/phonegap/DroidGap;Ljava/lang/String;)V

    .line 459
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 460
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 461
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1293
    invoke-super {p0, p1, p2, p3}, Lcom/phonegap/api/PhonegapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1294
    iget-object v0, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 1295
    .local v0, "callback":Lcom/phonegap/api/Plugin;
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0, p1, p2, p3}, Lcom/phonegap/api/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 1298
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/phonegap/api/PhonegapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 499
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x800

    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 179
    invoke-super {p0, p1}, Lcom/phonegap/api/PhonegapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 181
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 185
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 186
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 187
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 189
    .local v2, "height":I
    new-instance v5, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;

    invoke-direct {v5, p0, p0, v4, v2}, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 190
    iget-object v5, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    iget-object v5, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 192
    iget-object v5, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 197
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 198
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 204
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/phonegap/DroidGap;->setVolumeControlStream(I)V

    .line 205
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 687
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onDestroy()V

    .line 689
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onPause.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onDestroy.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0}, Lcom/phonegap/api/PluginManager;->onDestroy()V

    .line 704
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1195
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1196
    invoke-super {p0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1236
    :goto_0
    return v0

    .line 1200
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1203
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->bound:Z

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:PhoneGap.fireEvent(\'backbutton\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v2

    .line 1205
    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v2

    .line 1214
    goto :goto_0

    .line 1219
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1225
    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    .line 1226
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:PhoneGap.fireEvent(\'menubutton\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v2

    .line 1227
    goto :goto_0

    .line 1231
    :cond_4
    const/16 v0, 0x54

    if-ne p1, v0, :cond_5

    .line 1232
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:PhoneGap.fireEvent(\'searchbutton\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v2

    .line 1233
    goto :goto_0

    .line 1236
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 646
    invoke-super {p0, p1}, Lcom/phonegap/api/PhonegapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 649
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0, p1}, Lcom/phonegap/api/PluginManager;->onNewIntent(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 622
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onPause()V

    .line 623
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onPause.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    iget-boolean v1, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PluginManager;->onPause(Z)V

    .line 634
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1309
    move-object v1, p0

    .line 1312
    .local v1, "me":Lcom/phonegap/DroidGap;
    const-string v2, "errorUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/phonegap/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "errorUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1316
    new-instance v2, Lcom/phonegap/DroidGap$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/phonegap/DroidGap$4;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1328
    :goto_0
    return-void

    .line 1325
    :cond_0
    iget-object v2, v1, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1326
    const-string v2, "Application Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/phonegap/DroidGap;->displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onResume()V

    .line 658
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onResume.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    iget-boolean v1, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/phonegap/api/PluginManager;->onResume(Z)V

    .line 669
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_0

    .line 672
    :cond_3
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_4

    .line 673
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 674
    iput-boolean v2, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 666
    goto :goto_1
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v0, p1}, Lcom/phonegap/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    return-void
.end method

.method public setDoubleProperty(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 615
    return-void
.end method

.method public setIntegerProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    return-void
.end method

.method public setStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    return-void
.end method

.method protected setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "appView"    # Landroid/webkit/WebView;
    .param p2, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 279
    iput-object p2, p0, Lcom/phonegap/DroidGap;->webViewClient:Landroid/webkit/WebViewClient;

    .line 280
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 281
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResult(intent,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1253
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1254
    invoke-super {p0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1259
    return-void

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneGap Exception: Call startActivityForResult(Command, Intent) instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "command"    # Lcom/phonegap/api/Plugin;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 1271
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    .line 1274
    if-eqz p1, :cond_0

    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 1279
    :cond_0
    invoke-super {p0, p2, p3}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1280
    return-void
.end method
