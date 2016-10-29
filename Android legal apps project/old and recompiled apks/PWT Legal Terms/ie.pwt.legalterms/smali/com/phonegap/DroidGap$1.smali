.class Lcom/phonegap/DroidGap$1;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/DroidGap;

.field final synthetic val$me:Lcom/phonegap/DroidGap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/phonegap/DroidGap$1;->this$0:Lcom/phonegap/DroidGap;

    iput-object p2, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iput-object p3, p0, Lcom/phonegap/DroidGap$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 368
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    # invokes: Lcom/phonegap/DroidGap;->handleActivityParameters()V
    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$000(Lcom/phonegap/DroidGap;)V

    .line 371
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    iget-object v1, p0, Lcom/phonegap/DroidGap$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phonegap/CallbackServer;->init(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    const-string v1, "loadingDialog"

    invoke-virtual {v0, v1, v3}, Lcom/phonegap/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "loading":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 377
    const-string v13, ""

    .line 378
    .local v13, "title":Ljava/lang/String;
    const-string v9, "Loading Application..."

    .line 380
    .local v9, "message":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 382
    .local v6, "comma":I
    if-lez v6, :cond_2

    .line 383
    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 384
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 391
    .end local v6    # "comma":I
    :cond_0
    :goto_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 392
    .local v10, "parm":Lorg/json/JSONArray;
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 394
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "Notification"

    const-string v2, "activityStart"

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 398
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "parm":Lorg/json/JSONArray;
    .end local v13    # "title":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    # getter for: Lcom/phonegap/DroidGap;->loadUrlTimeout:I
    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$100(Lcom/phonegap/DroidGap;)I

    move-result v7

    .line 399
    .local v7, "currentLoadUrlTimeout":I
    new-instance v11, Lcom/phonegap/DroidGap$1$1;

    invoke-direct {v11, p0, v7}, Lcom/phonegap/DroidGap$1$1;-><init>(Lcom/phonegap/DroidGap$1;I)V

    .line 416
    .local v11, "runnable":Ljava/lang/Runnable;
    new-instance v12, Ljava/lang/Thread;

    invoke-direct {v12, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    .local v12, "thread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 418
    iget-object v0, p0, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/phonegap/DroidGap$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 419
    return-void

    .line 387
    .end local v7    # "currentLoadUrlTimeout":I
    .end local v11    # "runnable":Ljava/lang/Runnable;
    .end local v12    # "thread":Ljava/lang/Thread;
    .restart local v6    # "comma":I
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_2
    const-string v13, ""

    .line 388
    move-object v9, v8

    goto :goto_0
.end method
