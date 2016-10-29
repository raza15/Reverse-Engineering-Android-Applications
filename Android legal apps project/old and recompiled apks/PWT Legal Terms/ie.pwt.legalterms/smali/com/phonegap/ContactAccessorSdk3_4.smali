.class public Lcom/phonegap/ContactAccessorSdk3_4;
.super Lcom/phonegap/ContactAccessor;
.source "ContactAccessorSdk3_4.java"


# static fields
.field private static final PEOPLE_ID_EQUALS:Ljava/lang/String; = "people._id = ?"

.field private static final dbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "company"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "company"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "notes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "app"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/phonegap/ContactAccessor;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    .line 94
    iput-object p1, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mView:Landroid/webkit/WebView;

    .line 95
    return-void
.end method

.method private addressQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    const-string v3, "person = ? AND kind = ?"

    .line 369
    .local v3, "addrWhere":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/postal-address"

    aput-object v1, v4, v0

    .line 371
    .local v4, "addrWhereParams":[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 373
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 375
    .local v7, "addresses":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .local v6, "address":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v0, "formatted"

    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 382
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 385
    .end local v6    # "address":Lorg/json/JSONObject;
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v7
.end method

.method private buildSetOfContactIds(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v2, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 206
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "key":Ljava/lang/String;
    const-string v0, "displayName"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const-string v0, "phoneNumbers"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 266
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 267
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v2

    .line 229
    .restart local v9    # "key":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "emails"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/email"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 236
    :cond_4
    const-string v0, "addresses"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/postal-address"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :cond_5
    const-string v0, "ims"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/jabber-im"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :cond_6
    const-string v0, "organizations"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    sget-object v3, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :cond_7
    const-string v0, "note"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private createAddressString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Lorg/json/JSONObject;

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "locality"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    const-string v1, "locality"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :cond_0
    const-string v1, "region"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 596
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :cond_1
    const-string v1, "region"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_2
    const-string v1, "postalCode"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 602
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    :cond_3
    const-string v1, "postalCode"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    :cond_4
    const-string v1, "country"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 608
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    :cond_5
    const-string v1, "country"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, v2

    .line 286
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v6, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 297
    return-void
.end method

.method private emailQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 424
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v5

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 429
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 431
    .local v9, "emails":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .local v8, "email":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string v0, "perf"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 436
    const-string v0, "value"

    const-string v1, "data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 441
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 444
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "email":Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 660
    const/4 v0, 0x3

    .line 661
    .local v0, "type":I
    if-eqz p1, :cond_3

    .line 662
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    const/4 v1, 0x1

    .line 675
    :goto_0
    return v1

    .line 665
    :cond_0
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    const/4 v1, 0x2

    goto :goto_0

    .line 668
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    const/4 v1, 0x3

    goto :goto_0

    .line 671
    :cond_2
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v0

    .line 675
    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 685
    packed-switch p1, :pswitch_data_0

    .line 697
    const-string v0, "other"

    .line 700
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 687
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 688
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 690
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "home"

    .line 691
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 693
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "work"

    .line 694
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 747
    const/4 v0, 0x7

    .line 748
    .local v0, "type":I
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const/4 v1, 0x1

    .line 775
    :goto_0
    return v1

    .line 751
    :cond_0
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    const/4 v1, 0x2

    goto :goto_0

    .line 754
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    const/4 v1, 0x3

    goto :goto_0

    .line 757
    :cond_2
    const-string v1, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 758
    goto :goto_0

    .line 760
    :cond_3
    const-string v1, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    const/4 v1, 0x5

    goto :goto_0

    .line 763
    :cond_4
    const-string v1, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 764
    goto :goto_0

    .line 766
    :cond_5
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 767
    const/4 v1, 0x6

    goto :goto_0

    .line 769
    :cond_6
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 770
    const/4 v1, 0x7

    goto :goto_0

    .line 772
    :cond_7
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 773
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    move v1, v0

    .line 775
    goto :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 785
    packed-switch p1, :pswitch_data_0

    .line 809
    const-string v0, "custom"

    .line 812
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 787
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 788
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 790
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "home fax"

    .line 791
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 793
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "work fax"

    .line 794
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 796
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "home"

    .line 797
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 799
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 800
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 802
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "pager"

    .line 803
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 805
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "work"

    .line 806
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private imQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    const-string v3, "person = ? AND kind = ?"

    .line 308
    .local v3, "imWhere":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/jabber-im"

    aput-object v1, v4, v0

    .line 309
    .local v4, "imWhereParams":[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 313
    .local v9, "ims":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v8, "im":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "perf"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    const-string v0, "value"

    const-string v1, "data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v0, "type"

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getContactType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 325
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 328
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "im":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    return-object v2
.end method

.method private organizationQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 339
    const-string v3, "person = ?"

    .line 340
    .local v3, "orgWhere":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 341
    .local v4, "orgWhereParams":[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 345
    .local v9, "organizations":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v8, "organization":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v0, "name"

    const-string v1, "company"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v0, "title"

    const-string v1, "title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 354
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 357
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "organization":Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private phoneQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 395
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v5

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v9, "phones":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v8, "phone":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v0, "perf"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 407
    const-string v0, "value"

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v0, "type"

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getPhoneType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 411
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 414
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "phone":Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private saveAddresses(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 12
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 546
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "contact_methods"

    invoke-static {p2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 549
    .local v6, "newUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 551
    .local v5, "id":Ljava/lang/String;
    :try_start_0
    const-string v9, "addresses"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 552
    .local v2, "entries":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 554
    const-string v9, "kind"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 556
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 557
    .local v3, "entry":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 559
    const-string v9, "formatted"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 561
    const-string v9, "data"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_1
    if-nez v5, :cond_2

    .line 568
    iget-object v9, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 555
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 564
    :cond_0
    const-string v9, "data"

    invoke-direct {p0, v3}, Lcom/phonegap/ContactAccessorSdk3_4;->createAddressString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 577
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "entries":Lorg/json/JSONArray;
    .end local v3    # "entry":Lorg/json/JSONObject;
    .end local v4    # "i":I
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 578
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "ContactsAccessor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not save address = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void

    .line 571
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "entries":Lorg/json/JSONArray;
    .restart local v3    # "entry":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    :cond_2
    :try_start_1
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 572
    .local v7, "tempUri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 11
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataType"    # Ljava/lang/String;
    .param p4, "contactKind"    # I

    .prologue
    .line 624
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 625
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "contact_methods"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 627
    .local v5, "newUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 630
    .local v4, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 631
    .local v1, "entries":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 633
    const-string v8, "kind"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 635
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 636
    .local v2, "entry":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v2, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 637
    const-string v8, "data"

    const-string v9, "value"

    invoke-virtual {p0, v2, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v8, "type"

    const-string v9, "type"

    invoke-virtual {p0, v2, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getContactType(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    if-nez v4, :cond_0

    .line 640
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 634
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 644
    .local v6, "tempUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 649
    .end local v1    # "entries":Lorg/json/JSONArray;
    .end local v2    # "entry":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v6    # "tempUri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 650
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private saveOrganizations(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 11
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "newPersonUri"    # Landroid/net/Uri;

    .prologue
    .line 509
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "organizations"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 512
    .local v4, "orgUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 514
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    const-string v8, "organizations"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 515
    .local v5, "orgs":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 517
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 518
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 519
    .local v3, "org":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v3, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    const-string v8, "company"

    const-string v9, "name"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v8, "title"

    const-string v9, "title"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-nez v2, :cond_0

    .line 523
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 517
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 527
    .local v6, "tempUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 532
    .end local v1    # "i":I
    .end local v3    # "org":Lorg/json/JSONObject;
    .end local v5    # "orgs":Lorg/json/JSONArray;
    .end local v6    # "tempUri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 533
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save organizations = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private savePhoneNumbers(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 11
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 712
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "phones"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 715
    .local v6, "phonesUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 718
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    const-string v8, "phoneNumbers"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 719
    .local v5, "phones":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 722
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 723
    .local v4, "phone":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v4, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    const-string v8, "number"

    const-string v9, "value"

    invoke-virtual {p0, v4, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v8, "type"

    const-string v9, "type"

    invoke-virtual {p0, v4, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getPhoneType(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    if-nez v2, :cond_0

    .line 727
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 721
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_0
    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 731
    .local v3, "newUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 736
    .end local v1    # "i":I
    .end local v3    # "newUri":Landroid/net/Uri;
    .end local v4    # "phone":Lorg/json/JSONObject;
    .end local v5    # "phones":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 737
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save phones = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 821
    iget-object v1, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "people._id = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 825
    .local v0, "result":I
    if-lez v0, :cond_0

    move v1, v6

    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method public save(Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "contact"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 455
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v4, "personValues":Landroid/content/ContentValues;
    const-string v5, "id"

    invoke-virtual {p0, p1, v5}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "id":Ljava/lang/String;
    const-string v5, "displayName"

    invoke-virtual {p0, p1, v5}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 461
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    const-string v5, "note"

    invoke-virtual {p0, p1, v5}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "note":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 465
    const-string v5, "notes"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1
    const-string v5, "starred"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    if-nez v0, :cond_2

    .line 474
    iget-object v5, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 482
    .local v2, "newPersonUri":Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_3

    .line 484
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->savePhoneNumbers(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 486
    const-string v5, "emails"

    invoke-direct {p0, p1, v2, v5, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 488
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->saveAddresses(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 490
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->saveOrganizations(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 492
    const-string v5, "ims"

    const/4 v6, 0x3

    invoke-direct {p0, p1, v2, v5, v6}, Lcom/phonegap/ContactAccessorSdk3_4;->saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V

    move v5, v9

    .line 497
    :goto_1
    return v5

    .line 478
    .end local v2    # "newPersonUri":Landroid/net/Uri;
    :cond_2
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 479
    .restart local v2    # "newPersonUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "people._id = ?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v8

    .line 497
    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 21
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    const-string v20, ""

    .line 107
    .local v20, "searchTerm":Ljava/lang/String;
    const v16, 0x7fffffff

    .line 108
    .local v16, "limit":I
    const/16 v17, 0x1

    .line 110
    .local v17, "multiple":Z
    if-eqz p2, :cond_9

    .line 111
    const-string v4, "filter"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 112
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 113
    const-string v20, "%"

    .line 119
    :goto_0
    :try_start_0
    const-string v4, "multiple"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 120
    if-nez v17, :cond_0

    .line 121
    const/16 v16, 0x1

    .line 131
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 133
    .local v3, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->buildSetOfContactIds(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 134
    .local v11, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/phonegap/ContactAccessorSdk3_4;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v18

    .line 136
    .local v18, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 138
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .local v12, "contacts":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 142
    .local v19, "pos":I
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 143
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v9, "contact":Lorg/json/JSONObject;
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 146
    .local v10, "contactId":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "notes"

    aput-object v7, v5, v6

    const-string v6, "people._id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 154
    .local v13, "cur":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    const-string v4, "displayName"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const-string v4, "displayName"

    const-string v5, "display_name"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_1
    const-string v4, "phoneNumbers"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    const-string v4, "phoneNumbers"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->phoneQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_2
    const-string v4, "emails"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    const-string v4, "emails"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->emailQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_3
    const-string v4, "addresses"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    const-string v4, "addresses"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->addressQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_4
    const-string v4, "organizations"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    const-string v4, "organizations"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->organizationQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_5
    const-string v4, "ims"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    const-string v4, "ims"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->imQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_6
    const-string v4, "note"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    const-string v4, "note"

    const-string v5, "notes"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_7
    add-int/lit8 v19, v19, 0x1

    .line 184
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    .end local v10    # "contactId":Ljava/lang/String;
    .end local v13    # "cur":Landroid/database/Cursor;
    :goto_3
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 116
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "contact":Lorg/json/JSONObject;
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v19    # "pos":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 128
    :cond_9
    const-string v20, "%"

    goto/16 :goto_1

    .line 185
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "contact":Lorg/json/JSONObject;
    .restart local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "contacts":Lorg/json/JSONArray;
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v19    # "pos":I
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 186
    .local v14, "e":Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 190
    .end local v9    # "contact":Lorg/json/JSONObject;
    .end local v14    # "e":Lorg/json/JSONException;
    :cond_a
    return-object v12

    .line 123
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v19    # "pos":I
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
