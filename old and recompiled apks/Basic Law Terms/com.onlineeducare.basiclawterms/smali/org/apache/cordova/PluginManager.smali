.class public Lorg/apache/cordova/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/PluginManager$PluginManagerService;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final app:Lorg/apache/cordova/CordovaWebView;

.field private final ctx:Lorg/apache/cordova/CordovaInterface;

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field private firstRun:Z

.field private numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected urlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "PluginManager"

    sput-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;)V
    .locals 2
    .param p1, "app"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "ctx"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/PluginManager;->urlMap:Ljava/util/HashMap;

    .line 74
    iput-object p2, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    .line 75
    iput-object p1, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/PluginManager;->firstRun:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/cordova/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/PluginManager;->execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/PluginManager;)Lorg/apache/cordova/CordovaInterface;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    return-object v0
.end method

.method private execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "rawArgs"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v6

    .line 220
    .local v6, "plugin":Lorg/apache/cordova/CordovaPlugin;
    if-nez v6, :cond_1

    .line 221
    sget-object v10, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exec() call to unknown plugin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 223
    .local v2, "cr":Lorg/apache/cordova/PluginResult;
    iget-object v10, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V

    .line 242
    .end local v2    # "cr":Lorg/apache/cordova/PluginResult;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    :try_start_0
    new-instance v1, Lorg/apache/cordova/CallbackContext;

    iget-object v10, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v0, p3

    invoke-direct {v1, v0, v10}, Lorg/apache/cordova/CallbackContext;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 228
    .local v1, "callbackContext":Lorg/apache/cordova/CallbackContext;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 229
    .local v7, "pluginStartTime":J
    move-object/from16 v0, p4

    invoke-virtual {v6, p2, v0, v1}, Lorg/apache/cordova/CordovaPlugin;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v9

    .line 230
    .local v9, "wasValidAction":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v3, v10, v7

    .line 231
    .local v3, "duration":J
    const-wide/16 v10, 0x10

    cmp-long v10, v3, v10

    if-lez v10, :cond_2

    .line 232
    sget-object v10, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "THREAD WARNING: exec() call to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " blocked the main thread for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms. Plugin should use CordovaInterface.getThreadPool()."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    if-nez v9, :cond_0

    .line 235
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 236
    .restart local v2    # "cr":Lorg/apache/cordova/PluginResult;
    iget-object v10, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v1    # "callbackContext":Lorg/apache/cordova/CallbackContext;
    .end local v2    # "cr":Lorg/apache/cordova/PluginResult;
    .end local v3    # "duration":J
    .end local v7    # "pluginStartTime":J
    .end local v9    # "wasValidAction":Z
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 240
    .restart local v2    # "cr":Lorg/apache/cordova/PluginResult;
    iget-object v10, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pluginConfigurationMissing()V
    .locals 2

    .prologue
    .line 394
    sget-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: config.xml is missing.  Add res/xml/config.xml to your project."

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Lorg/apache/cordova/PluginEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 279
    return-void
.end method

.method public addService(Lorg/apache/cordova/PluginEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/cordova/PluginEntry;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/apache/cordova/PluginEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public clearPluginObjects()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 172
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    goto :goto_0

    .line 174
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_0
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "rawArgs"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 207
    iget-object v0, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lorg/apache/cordova/PluginManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/PluginManager$1;-><init>(Lorg/apache/cordova/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/PluginManager;->execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "jsonArgs"    # Ljava/lang/String;
    .param p5, "async"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/cordova/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 259
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    if-nez v0, :cond_1

    .line 260
    const/4 v1, 0x0

    .line 266
    :cond_0
    :goto_0
    return-object v1

    .line 262
    :cond_1
    iget-object v1, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 263
    .local v1, "plugin":Lorg/apache/cordova/CordovaPlugin;
    if-nez v1, :cond_0

    .line 264
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v1

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v0, Lorg/apache/cordova/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lorg/apache/cordova/PluginManager;->firstRun:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/apache/cordova/PluginManager;->loadPlugins()V

    .line 89
    iput-boolean v2, p0, Lorg/apache/cordova/PluginManager;->firstRun:Z

    .line 100
    :goto_0
    new-instance v0, Lorg/apache/cordova/PluginEntry;

    const-string v1, "PluginManager"

    new-instance v2, Lorg/apache/cordova/PluginManager$PluginManagerService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/PluginManager$PluginManagerService;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/PluginManager$1;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 103
    invoke-virtual {p0}, Lorg/apache/cordova/PluginManager;->startupPlugins()V

    .line 104
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/cordova/PluginManager;->onPause(Z)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/cordova/PluginManager;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Lorg/apache/cordova/PluginManager;->clearPluginObjects()V

    goto :goto_0
.end method

.method public loadPlugins()V
    .locals 15

    .prologue
    .line 110
    iget-object v11, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config"

    const-string v13, "xml"

    iget-object v14, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "id":I
    if-nez v3, :cond_1

    .line 112
    invoke-direct {p0}, Lorg/apache/cordova/PluginManager;->pluginConfigurationMissing()V

    .line 165
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v11, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 117
    .local v10, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 118
    .local v2, "eventType":I
    const-string v8, ""

    .local v8, "service":Ljava/lang/String;
    const-string v7, ""

    .local v7, "pluginClass":Ljava/lang/String;
    const-string v6, ""

    .line 119
    .local v6, "paramType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 120
    .local v5, "onload":Z
    const/4 v4, 0x0

    .line 121
    .local v4, "insideFeature":Z
    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_0

    .line 122
    const/4 v11, 0x2

    if-ne v2, v11, :cond_8

    .line 123
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "strNode":Ljava/lang/String;
    const-string v11, "url-filter"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 125
    iget-object v11, p0, Lorg/apache/cordova/PluginManager;->urlMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 127
    .restart local v9    # "strNode":Ljava/lang/String;
    :cond_3
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 130
    const/4 v4, 0x1

    .line 131
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 133
    :cond_4
    if-eqz v4, :cond_2

    const-string v11, "param"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 134
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    const-string v11, "service"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 136
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 137
    :cond_5
    const-string v11, "package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "android-package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 138
    :cond_6
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 139
    :cond_7
    const-string v11, "onload"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 140
    const-string v11, "true"

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 143
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    .line 145
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 146
    .restart local v9    # "strNode":Ljava/lang/String;
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "plugin"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 148
    :cond_9
    new-instance v1, Lorg/apache/cordova/PluginEntry;

    invoke-direct {v1, v8, v7, v5}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .local v1, "entry":Lorg/apache/cordova/PluginEntry;
    invoke-virtual {p0, v1}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 152
    const-string v8, ""

    .line 153
    const-string v7, ""

    .line 154
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 159
    .end local v1    # "entry":Lorg/apache/cordova/PluginEntry;
    .end local v9    # "strNode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 161
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 321
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 322
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    goto :goto_0

    .line 326
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 355
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 356
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_1
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 370
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 372
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/CordovaPlugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    .line 376
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 297
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 298
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    goto :goto_0

    .line 302
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    .line 383
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/PluginEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/PluginEntry;

    iget-object v1, v2, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    .line 386
    .local v1, "plugin":Lorg/apache/cordova/CordovaPlugin;
    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v1}, Lorg/apache/cordova/CordovaPlugin;->onReset()V

    goto :goto_0

    .line 390
    .end local v1    # "plugin":Lorg/apache/cordova/CordovaPlugin;
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 310
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 311
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    goto :goto_0

    .line 315
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_1
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 336
    iget-object v3, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3, p1, p2}, Lorg/apache/cordova/CordovaInterface;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 348
    :goto_0
    return-object v3

    .line 340
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 341
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v3, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v3, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 344
    goto :goto_0

    .line 348
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 401
    iget-object v3, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 402
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-object v3, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v3, :cond_0

    .line 403
    iget-object v3, v0, Lorg/apache/cordova/PluginEntry;->plugin:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CordovaPlugin;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 404
    .local v2, "ret":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 409
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    .end local v2    # "ret":Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startupPlugins()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginEntry;

    .line 181
    .local v0, "entry":Lorg/apache/cordova/PluginEntry;
    iget-boolean v2, v0, Lorg/apache/cordova/PluginEntry;->onload:Z

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lorg/apache/cordova/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/PluginManager;->ctx:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;)Lorg/apache/cordova/CordovaPlugin;

    goto :goto_0

    .line 185
    .end local v0    # "entry":Lorg/apache/cordova/PluginEntry;
    :cond_1
    return-void
.end method
