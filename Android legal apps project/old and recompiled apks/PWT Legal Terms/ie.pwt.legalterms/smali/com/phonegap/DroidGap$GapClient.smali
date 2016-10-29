.class public Lcom/phonegap/DroidGap$GapClient;
.super Landroid/webkit/WebChromeClient;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GapClient"
.end annotation


# instance fields
.field private ctx:Lcom/phonegap/DroidGap;

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 756
    check-cast p2, Lcom/phonegap/DroidGap;

    .end local p2    # "ctx":Landroid/content/Context;
    iput-object p2, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    .line 757
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 769
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 770
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 771
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 772
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 773
    const v1, 0x104000a

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$1;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$1;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 780
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 781
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 796
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 798
    const v1, 0x104000a

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$2;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$2;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$3;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$3;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 810
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 811
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 812
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 17
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 828
    const/4 v15, 0x0

    .line 829
    .local v15, "reqOk":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    move-object v4, v0

    # getter for: Lcom/phonegap/DroidGap;->urlFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/phonegap/DroidGap;->access$300(Lcom/phonegap/DroidGap;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    # invokes: Lcom/phonegap/DroidGap;->getUrlFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phonegap/DroidGap;->access$200(Lcom/phonegap/DroidGap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    const/4 v15, 0x1

    .line 835
    :cond_0
    if-eqz v15, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gap:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 838
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    const/4 v4, 0x4

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 839
    .local v10, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "service":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, "action":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, "callbackId":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v9

    .line 843
    .local v9, "async":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v4, v0

    iget-object v4, v4, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 844
    .local v14, "r":Ljava/lang/String;
    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    .end local v5    # "service":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "callbackId":Ljava/lang/String;
    .end local v9    # "async":Z
    .end local v10    # "array":Lorg/json/JSONArray;
    .end local v14    # "r":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 845
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 846
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 851
    .end local v12    # "e":Lorg/json/JSONException;
    :cond_1
    if-eqz v15, :cond_2

    const-string v4, "gap_poll:"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v4, v0

    iget-object v4, v4, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v4}, Lcom/phonegap/CallbackServer;->getJavascript()Ljava/lang/String;

    move-result-object v14

    .line 853
    .restart local v14    # "r":Ljava/lang/String;
    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    .end local v14    # "r":Ljava/lang/String;
    :cond_2
    if-eqz v15, :cond_7

    const-string v4, "gap_callbackServer:"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 858
    const-string v14, ""

    .line 859
    .restart local v14    # "r":Ljava/lang/String;
    const-string v4, "usePolling"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v5, v0

    iget-object v5, v5, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v5}, Lcom/phonegap/CallbackServer;->usePolling()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 871
    :cond_3
    :goto_1
    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_4
    const-string v4, "restartServer"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v4, v0

    iget-object v4, v4, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v4}, Lcom/phonegap/CallbackServer;->restartServer()V

    goto :goto_1

    .line 865
    :cond_5
    const-string v4, "getPort"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v4, v0

    iget-object v4, v4, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v4}, Lcom/phonegap/CallbackServer;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 868
    :cond_6
    const-string v4, "getToken"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    move-object v4, v0

    iget-object v4, v4, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v4}, Lcom/phonegap/CallbackServer;->getToken()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 876
    .end local v14    # "r":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, p5

    .line 877
    .local v16, "res":Landroid/webkit/JsPromptResult;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    move-object v4, v0

    invoke-direct {v11, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 878
    .local v11, "dlg":Landroid/app/AlertDialog$Builder;
    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 879
    new-instance v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/DroidGap$GapClient;->ctx:Lcom/phonegap/DroidGap;

    move-object v4, v0

    invoke-direct {v13, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 880
    .local v13, "input":Landroid/widget/EditText;
    invoke-virtual {v11, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 881
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 882
    const v4, 0x104000a

    new-instance v5, Lcom/phonegap/DroidGap$GapClient$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/DroidGap$GapClient$4;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v11, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 889
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/phonegap/DroidGap$GapClient$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/phonegap/DroidGap$GapClient$5;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v11, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 895
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 896
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
