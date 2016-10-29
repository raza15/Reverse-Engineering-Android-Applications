.class public final Lcom/phonegap/api/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field private final app:Landroid/webkit/WebView;

.field private final ctx:Lcom/phonegap/api/PhonegapActivity;

.field private plugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/phonegap/api/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/webkit/WebView;Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .param p1, "app"    # Landroid/webkit/WebView;
    .param p2, "ctx"    # Lcom/phonegap/api/PhonegapActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    .line 40
    iput-object p2, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 41
    iput-object p1, p0, Lcom/phonegap/api/PluginManager;->app:Landroid/webkit/WebView;

    .line 42
    return-void
.end method

.method private addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/phonegap/api/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;

    move-result-object v2

    .line 206
    :goto_0
    return-object v2

    .line 196
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonegap/api/Plugin;

    .line 197
    .local v1, "plugin":Lcom/phonegap/api/Plugin;
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 199
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->app:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/Plugin;->setView(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 200
    goto :goto_0

    .line 202
    .end local v1    # "plugin":Lcom/phonegap/api/Plugin;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/api/Plugin;

    .line 217
    .local v0, "plugin":Lcom/phonegap/api/Plugin;
    return-object v0
.end method

.method private isPhoneGapPlugin(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_2

    .line 159
    const-class v0, Lcom/phonegap/api/Plugin;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/phonegap/api/IPlugin;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0
.end method


# virtual methods
.method public addPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/phonegap/api/PluginManager;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/phonegap/api/PluginManager;->addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 176
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "jsonArgs"    # Ljava/lang/String;
    .param p5, "async"    # Z

    .prologue
    .line 68
    const/4 v13, 0x0

    .line 69
    .local v13, "cr":Lcom/phonegap/api/PluginResult;
    move/from16 v15, p5

    .line 71
    .local v15, "runAsync":Z
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    move-object v0, v8

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    .local v8, "args":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 73
    .local v12, "clazz":Ljava/lang/String;
    const/4 v11, 0x0

    .line 74
    .local v11, "c":Ljava/lang/Class;
    if-eqz v12, :cond_0

    .line 75
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginManager;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 77
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginManager;->isPhoneGapPlugin(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginManager;->addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;

    move-result-object v6

    .line 79
    .local v6, "plugin":Lcom/phonegap/api/Plugin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    move-object v10, v0

    .line 80
    .local v10, "ctx":Lcom/phonegap/api/PhonegapActivity;
    if-eqz p5, :cond_1

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/phonegap/api/Plugin;->isSynch(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v15, v4

    .line 81
    :goto_0
    if-eqz v15, :cond_2

    .line 83
    new-instance v16, Ljava/lang/Thread;

    new-instance v4, Lcom/phonegap/api/PluginManager$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v10}, Lcom/phonegap/api/PluginManager$1;-><init>(Lcom/phonegap/api/PluginManager;Lcom/phonegap/api/Plugin;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lcom/phonegap/api/PhonegapActivity;)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 110
    const-string v4, ""

    .line 134
    .end local v6    # "plugin":Lcom/phonegap/api/Plugin;
    .end local v8    # "args":Lorg/json/JSONArray;
    .end local v10    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    .end local v11    # "c":Ljava/lang/Class;
    .end local v12    # "clazz":Ljava/lang/String;
    .end local v16    # "thread":Ljava/lang/Thread;
    :goto_1
    return-object v4

    .line 80
    .restart local v6    # "plugin":Lcom/phonegap/api/Plugin;
    .restart local v8    # "args":Lorg/json/JSONArray;
    .restart local v10    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    .restart local v11    # "c":Ljava/lang/Class;
    .restart local v12    # "clazz":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move v15, v4

    goto :goto_0

    .line 113
    :cond_2
    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/phonegap/api/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;

    move-result-object v13

    .line 116
    invoke-virtual {v13}, Lcom/phonegap/api/PluginResult;->getStatus()I

    move-result v4

    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-virtual {v5}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v13}, Lcom/phonegap/api/PluginResult;->getKeepCallback()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 121
    .end local v6    # "plugin":Lcom/phonegap/api/Plugin;
    .end local v8    # "args":Lorg/json/JSONArray;
    .end local v10    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    .end local v11    # "c":Ljava/lang/Class;
    .end local v12    # "clazz":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 122
    .local v14, "e":Ljava/lang/ClassNotFoundException;
    new-instance v13, Lcom/phonegap/api/PluginResult;

    .end local v13    # "cr":Lcom/phonegap/api/PluginResult;
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v13, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 128
    .end local v14    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v13    # "cr":Lcom/phonegap/api/PluginResult;
    :cond_3
    :goto_2
    if-eqz v15, :cond_5

    .line 129
    if-nez v13, :cond_4

    .line 130
    new-instance v13, Lcom/phonegap/api/PluginResult;

    .end local v13    # "cr":Lcom/phonegap/api/PluginResult;
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v13, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 132
    .restart local v13    # "cr":Lcom/phonegap/api/PluginResult;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    move-object v4, v0

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PluginResult;->toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/phonegap/api/PhonegapActivity;->sendJavascript(Ljava/lang/String;)V

    .line 134
    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/phonegap/api/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 123
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 124
    .local v14, "e":Lorg/json/JSONException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    new-instance v13, Lcom/phonegap/api/PluginResult;

    .end local v13    # "cr":Lcom/phonegap/api/PluginResult;
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v13, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .restart local v13    # "cr":Lcom/phonegap/api/PluginResult;
    goto :goto_2

    .line 134
    .end local v14    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v4, "{ status: 0, message: \'all good\' }"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 265
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 266
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 270
    .local v2, "plugin":Lcom/phonegap/api/Plugin;
    invoke-virtual {v2}, Lcom/phonegap/api/Plugin;->onDestroy()V

    goto :goto_0

    .line 272
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2    # "plugin":Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 279
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 283
    .local v2, "plugin":Lcom/phonegap/api/Plugin;
    invoke-virtual {v2, p1}, Lcom/phonegap/api/Plugin;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2    # "plugin":Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method

.method public onPause(Z)V
    .locals 5
    .param p1, "multitasking"    # Z

    .prologue
    .line 237
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 238
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 242
    .local v2, "plugin":Lcom/phonegap/api/Plugin;
    invoke-virtual {v2, p1}, Lcom/phonegap/api/Plugin;->onPause(Z)V

    goto :goto_0

    .line 244
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2    # "plugin":Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 5
    .param p1, "multitasking"    # Z

    .prologue
    .line 252
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 253
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 254
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 257
    .local v2, "plugin":Lcom/phonegap/api/Plugin;
    invoke-virtual {v2, p1}, Lcom/phonegap/api/Plugin;->onResume(Z)V

    goto :goto_0

    .line 259
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2    # "plugin":Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method
