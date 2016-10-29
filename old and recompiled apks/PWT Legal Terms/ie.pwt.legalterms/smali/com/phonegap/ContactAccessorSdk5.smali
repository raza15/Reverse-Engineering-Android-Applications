.class public Lcom/phonegap/ContactAccessorSdk5;
.super Lcom/phonegap/ContactAccessor;
.source "ContactAccessorSdk5.java"


# static fields
.field private static final EMAIL_REGEXP:Ljava/lang/String; = ".+@.+\\.+.+"

.field private static final MAX_PHOTO_SIZE:J = 0x100000L

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
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    .line 91
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.familyName"

    const-string v2, "data3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.givenName"

    const-string v2, "data2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.middleName"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificPrefix"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificSuffix"

    const-string v2, "data6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "nickname"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.streetAddress"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.locality"

    const-string v2, "data7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.region"

    const-string v2, "data8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.postalCode"

    const-string v2, "data9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.country"

    const-string v2, "data10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.department"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "birthday"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "photos.value"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "app"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/phonegap/ContactAccessor;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    .line 133
    iput-object p1, p0, Lcom/phonegap/ContactAccessorSdk5;->mView:Landroid/webkit/WebView;

    .line 134
    return-void
.end method

.method private addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 547
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    .local v0, "address":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string v2, "formatted"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v2, "streetAddress"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v2, "locality"

    const-string v3, "data7"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v2, "region"

    const-string v3, "data8"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v2, "postalCode"

    const-string v3, "data9"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v2, "country"

    const-string v3, "data10"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-object v0

    .line 556
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 557
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lcom/phonegap/ContactAccessor$WhereOptions;
    .locals 5
    .param p2, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/phonegap/ContactAccessor$WhereOptions;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lcom/phonegap/ContactAccessor$WhereOptions;

    invoke-direct {v2, p0}, Lcom/phonegap/ContactAccessor$WhereOptions;-><init>(Lcom/phonegap/ContactAccessor;)V

    .line 353
    .local v2, "options":Lcom/phonegap/ContactAccessor$WhereOptions;
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const-string v3, "(contact_id LIKE ? )"

    invoke-virtual {v2, v3}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 355
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 374
    .end local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    :goto_0
    return-object v2

    .line 360
    .restart local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 363
    .end local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 369
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 372
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/ContactAccessor$WhereOptions;
    .locals 11
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 415
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v6, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v7, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/phonegap/ContactAccessor$WhereOptions;

    invoke-direct {v3, p0}, Lcom/phonegap/ContactAccessor$WhereOptions;-><init>(Lcom/phonegap/ContactAccessor;)V

    .line 423
    .local v3, "options":Lcom/phonegap/ContactAccessor$WhereOptions;
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 424
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 425
    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v3, v8}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 520
    .end local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    :goto_0
    return-object v3

    .line 432
    .restart local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    :cond_0
    const/4 v1, 0x0

    .end local p0    # "this":Lcom/phonegap/ContactAccessorSdk5;
    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 433
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "key":Ljava/lang/String;
    const-string v8, "displayName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 439
    :cond_2
    const-string v8, "name"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 499
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 500
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v4, "selection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 506
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-eq v1, v8, :cond_4

    .line 508
    const-string v8, " OR "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 445
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v8, "nickname"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 451
    :cond_6
    const-string v8, "phoneNumbers"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 457
    :cond_7
    const-string v8, "emails"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 463
    :cond_8
    const-string v8, "addresses"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 469
    :cond_9
    const-string v8, "ims"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 475
    :cond_a
    const-string v8, "organizations"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 485
    :cond_b
    const-string v8, "note"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 491
    :cond_c
    const-string v8, "urls"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/phonegap/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 511
    .end local v2    # "key":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/StringBuffer;
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 515
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_e

    .line 516
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 518
    :cond_e
    invoke-virtual {v3, v5}, Lcom/phonegap/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createNewContact(Lorg/json/JSONObject;Landroid/accounts/Account;)Z
    .locals 29
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1299
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v16, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v26, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :try_start_0
    const-string v26, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1310
    .local v13, "name":Lorg/json/JSONObject;
    const-string v26, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1311
    .local v6, "displayName":Ljava/lang/String;
    if-nez v6, :cond_0

    if-eqz v13, :cond_1

    .line 1312
    :cond_0
    sget-object v26, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "raw_contact_id"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/name"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data3"

    const-string v28, "familyName"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data5"

    const-string v28, "middleName"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data2"

    const-string v28, "givenName"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data4"

    const-string v28, "honorificPrefix"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data6"

    const-string v28, "honorificSuffix"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v13    # "name":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/16 v20, 0x0

    .line 1331
    .local v20, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v26, "phoneNumbers"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1332
    if-eqz v20, :cond_2

    .line 1333
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 1334
    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 1335
    .local v19, "phone":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1333
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1324
    .end local v10    # "i":I
    .end local v19    # "phone":Lorg/json/JSONObject;
    .end local v20    # "phones":Lorg/json/JSONArray;
    :catch_0
    move-exception v26

    move-object/from16 v7, v26

    .line 1325
    .local v7, "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get name object"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1339
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v20    # "phones":Lorg/json/JSONArray;
    :catch_1
    move-exception v26

    move-object/from16 v7, v26

    .line 1340
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get phone numbers"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v9, 0x0

    .line 1346
    .local v9, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v26, "emails"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1347
    if-eqz v9, :cond_3

    .line 1348
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 1349
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 1350
    .local v8, "email":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1348
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1354
    .end local v8    # "email":Lorg/json/JSONObject;
    .end local v10    # "i":I
    :catch_2
    move-exception v26

    move-object/from16 v7, v26

    .line 1355
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get emails"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v4, 0x0

    .line 1361
    .local v4, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v26, "addresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1362
    if-eqz v4, :cond_4

    .line 1363
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 1364
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1365
    .local v3, "address":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1363
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1369
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v10    # "i":I
    :catch_3
    move-exception v26

    move-object/from16 v7, v26

    .line 1370
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get addresses"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_4
    const/16 v18, 0x0

    .line 1376
    .local v18, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v26, "organizations"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1377
    if-eqz v18, :cond_5

    .line 1378
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1379
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 1380
    .local v17, "org":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1378
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1384
    .end local v10    # "i":I
    .end local v17    # "org":Lorg/json/JSONObject;
    :catch_4
    move-exception v26

    move-object/from16 v7, v26

    .line 1385
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get organizations"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v12, 0x0

    .line 1391
    .local v12, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v26, "ims"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1392
    if-eqz v12, :cond_6

    .line 1393
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 1394
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 1395
    .local v11, "im":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1393
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1399
    .end local v10    # "i":I
    .end local v11    # "im":Lorg/json/JSONObject;
    :catch_5
    move-exception v26

    move-object/from16 v7, v26

    .line 1400
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get emails"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v26, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1405
    .local v15, "note":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 1406
    sget-object v26, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "raw_contact_id"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/note"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    :cond_7
    const-string v26, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1415
    .local v14, "nickname":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 1416
    sget-object v26, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "raw_contact_id"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_8
    const/16 v25, 0x0

    .line 1426
    .local v25, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v26, "websites"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 1427
    if-eqz v25, :cond_9

    .line 1428
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 1429
    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/json/JSONObject;

    .line 1430
    .local v24, "website":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1428
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1434
    .end local v10    # "i":I
    .end local v24    # "website":Lorg/json/JSONObject;
    :catch_6
    move-exception v26

    move-object/from16 v7, v26

    .line 1435
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get websites"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_9
    const-string v26, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1440
    .local v5, "birthday":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 1441
    sget-object v26, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "raw_contact_id"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/contact_event"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data2"

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    const-string v27, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_a
    const/16 v22, 0x0

    .line 1452
    .local v22, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v26, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1453
    if-eqz v22, :cond_b

    .line 1454
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 1455
    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 1456
    .local v21, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1454
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1460
    .end local v10    # "i":I
    .end local v21    # "photo":Lorg/json/JSONObject;
    :catch_7
    move-exception v26

    move-object/from16 v7, v26

    .line 1461
    .restart local v7    # "e":Lorg/json/JSONException;
    const-string v26, "ContactsAccessor"

    const-string v27, "Could not get photos"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_b
    const/16 v23, 0x1

    .line 1467
    .local v23, "retVal":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "com.android.contacts"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1475
    :goto_8
    return v23

    .line 1468
    :catch_8
    move-exception v26

    move-object/from16 v7, v26

    .line 1469
    .local v7, "e":Landroid/os/RemoteException;
    const-string v26, "ContactsAccessor"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    const/16 v23, 0x0

    .line 1474
    goto :goto_8

    .line 1471
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v26

    move-object/from16 v7, v26

    .line 1472
    .local v7, "e":Landroid/content/OperationApplicationException;
    const-string v26, "ContactsAccessor"

    invoke-virtual {v7}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1473
    const/16 v23, 0x0

    goto :goto_8
.end method

.method private emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 623
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v1, "email":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 627
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-object v1

    .line 629
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 630
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1652
    const/4 v0, 0x3

    .line 1653
    .local v0, "type":I
    if-eqz p1, :cond_4

    .line 1654
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    const/4 v1, 0x1

    .line 1670
    :goto_0
    return v1

    .line 1657
    :cond_0
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    const/4 v1, 0x2

    goto :goto_0

    .line 1660
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1661
    const/4 v1, 0x3

    goto :goto_0

    .line 1663
    :cond_2
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1664
    const/4 v1, 0x4

    goto :goto_0

    .line 1666
    :cond_3
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1667
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1670
    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1680
    packed-switch p1, :pswitch_data_0

    .line 1695
    :pswitch_0
    const-string v0, "other"

    .line 1698
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1682
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1683
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1685
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home"

    .line 1686
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1688
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work"

    .line 1689
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1691
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 1692
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1278
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1280
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1287
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1282
    :cond_0
    const-string v2, "http:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1283
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 1287
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 1503
    const/4 v0, 0x7

    .line 1504
    .local v0, "type":I
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1505
    const/4 v1, 0x1

    .line 1570
    :goto_0
    return v1

    .line 1507
    :cond_0
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    const/4 v1, 0x2

    goto :goto_0

    .line 1510
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1511
    const/4 v1, 0x3

    goto :goto_0

    .line 1513
    :cond_2
    const-string v1, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1514
    goto :goto_0

    .line 1516
    :cond_3
    const-string v1, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1517
    const/4 v1, 0x5

    goto :goto_0

    .line 1519
    :cond_4
    const-string v1, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 1520
    goto :goto_0

    .line 1522
    :cond_5
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1523
    const/4 v1, 0x6

    goto :goto_0

    .line 1525
    :cond_6
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1526
    const/4 v1, 0x7

    goto :goto_0

    .line 1528
    :cond_7
    const-string v1, "car"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1529
    const/16 v1, 0x9

    goto :goto_0

    .line 1531
    :cond_8
    const-string v1, "company main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1532
    const/16 v1, 0xa

    goto :goto_0

    .line 1534
    :cond_9
    const-string v1, "isdn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1535
    const/16 v1, 0xb

    goto/16 :goto_0

    .line 1537
    :cond_a
    const-string v1, "main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1538
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 1540
    :cond_b
    const-string v1, "other fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1541
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 1543
    :cond_c
    const-string v1, "radio"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1544
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 1546
    :cond_d
    const-string v1, "telex"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1547
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 1549
    :cond_e
    const-string v1, "work mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1550
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 1552
    :cond_f
    const-string v1, "work pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1553
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 1555
    :cond_10
    const-string v1, "assistant"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1556
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 1558
    :cond_11
    const-string v1, "mms"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1559
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 1561
    :cond_12
    const-string v1, "callback"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1562
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 1564
    :cond_13
    const-string v1, "tty ttd"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1565
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 1567
    :cond_14
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1568
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_15
    move v1, v0

    .line 1570
    goto/16 :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1580
    packed-switch p1, :pswitch_data_0

    .line 1640
    :pswitch_0
    const-string v0, "other"

    .line 1643
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1582
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1583
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1585
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home fax"

    .line 1586
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1588
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work fax"

    .line 1589
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1591
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "home"

    .line 1592
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1594
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "mobile"

    .line 1595
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1597
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "pager"

    .line 1598
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1600
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "work"

    .line 1601
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1603
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "callback"

    .line 1604
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1606
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "car"

    .line 1607
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1609
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "company main"

    .line 1610
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1612
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "other fax"

    .line 1613
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1615
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "radio"

    .line 1616
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1618
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "telex"

    .line 1619
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1621
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "tty tdd"

    .line 1622
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1624
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_f
    const-string v0, "work mobile"

    .line 1625
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1627
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_10
    const-string v0, "work pager"

    .line 1628
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1630
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_11
    const-string v0, "assistant"

    .line 1631
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1633
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_12
    const-string v0, "mms"

    .line 1634
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1636
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_13
    const-string v0, "isdn"

    .line 1637
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_13
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getPhotoBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1249
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1251
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1252
    .local v1, "bytesRead":I
    const-wide/16 v5, 0x0

    .line 1253
    .local v5, "totalBytesRead":J
    const/16 v7, 0x2000

    :try_start_0
    new-array v2, v7, [B

    .line 1254
    .local v2, "data":[B
    invoke-direct {p0, p1}, Lcom/phonegap/ContactAccessorSdk5;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1256
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v4, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const-wide/32 v7, 0x100000

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 1257
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1258
    int-to-long v7, v1

    add-long/2addr v5, v7

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1262
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1268
    .end local v2    # "data":[B
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1263
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 1264
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1265
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 1266
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 641
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 643
    .local v1, "im":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 645
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-object v1

    .line 647
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 648
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "address"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "formatted"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "streetAddress"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data7"

    const-string v2, "locality"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data8"

    const-string v2, "region"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data9"

    const-string v2, "postalCode"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data10"

    const-string v2, "country"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    return-void
.end method

.method private insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "email"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1200
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phonegap/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    return-void
.end method

.method private insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "im"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    return-void
.end method

.method private insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "org"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1163
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data5"

    const-string v2, "department"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "name"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "title"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    return-void
.end method

.method private insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "phone"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phonegap/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    return-void
.end method

.method private insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 4
    .param p2, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "value"

    invoke-virtual {p0, p2, v1}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1233
    .local v0, "bytes":[B
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "is_super_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data15"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    return-void
.end method

.method private insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "website"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method

.method private modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Landroid/accounts/Account;)Z
    .locals 49
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contact"    # Lorg/json/JSONObject;
    .param p3, "account"    # Landroid/accounts/Account;

    .prologue
    .line 757
    new-instance v43, Ljava/lang/Integer;

    const-string v44, "rawId"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 760
    .local v38, "rawId":I
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v28, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v43, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "account_type"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "account_name"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :try_start_0
    const-string v43, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 772
    .local v10, "displayName":Ljava/lang/String;
    const-string v43, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 773
    .local v25, "name":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    if-eqz v25, :cond_7

    .line 774
    :cond_0
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/name"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 779
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v10, :cond_1

    .line 780
    const-string v43, "data1"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 783
    :cond_1
    const-string v43, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 784
    .local v16, "familyName":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 785
    const-string v43, "data3"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 787
    :cond_2
    const-string v43, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 788
    .local v24, "middleName":Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 789
    const-string v43, "data5"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 791
    :cond_3
    const-string v43, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 792
    .local v17, "givenName":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 793
    const-string v43, "data2"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 795
    :cond_4
    const-string v43, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 796
    .local v18, "honorificPrefix":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 797
    const-string v43, "data4"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 799
    :cond_5
    const-string v43, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 800
    .local v19, "honorificSuffix":Ljava/lang/String;
    if-eqz v19, :cond_6

    .line 801
    const-string v43, "data6"

    move-object v0, v7

    move-object/from16 v1, v43

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 804
    :cond_6
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v7    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v16    # "familyName":Ljava/lang/String;
    .end local v17    # "givenName":Ljava/lang/String;
    .end local v18    # "honorificPrefix":Ljava/lang/String;
    .end local v19    # "honorificSuffix":Ljava/lang/String;
    .end local v24    # "middleName":Ljava/lang/String;
    .end local v25    # "name":Lorg/json/JSONObject;
    :cond_7
    :goto_0
    const/16 v34, 0x0

    .line 813
    .local v34, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v43, "phoneNumbers"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 814
    if-eqz v34, :cond_9

    .line 815
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_9

    .line 816
    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    .line 817
    .local v32, "phone":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 819
    .local v33, "phoneId":Ljava/lang/String;
    if-nez v33, :cond_8

    .line 820
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/phone_v2"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 815
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 806
    .end local v20    # "i":I
    .end local v32    # "phone":Lorg/json/JSONObject;
    .end local v33    # "phoneId":Ljava/lang/String;
    .end local v34    # "phones":Lorg/json/JSONArray;
    :catch_0
    move-exception v43

    move-object/from16 v12, v43

    .line 807
    .local v12, "e1":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get name"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 831
    .end local v12    # "e1":Lorg/json/JSONException;
    .restart local v20    # "i":I
    .restart local v32    # "phone":Lorg/json/JSONObject;
    .restart local v33    # "phoneId":Ljava/lang/String;
    .restart local v34    # "phones":Lorg/json/JSONArray;
    :cond_8
    :try_start_2
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v33, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/phone_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 842
    .end local v20    # "i":I
    .end local v32    # "phone":Lorg/json/JSONObject;
    .end local v33    # "phoneId":Ljava/lang/String;
    :catch_1
    move-exception v43

    move-object/from16 v11, v43

    .line 843
    .local v11, "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get phone numbers"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_9
    const/4 v15, 0x0

    .line 849
    .local v15, "emails":Lorg/json/JSONArray;
    :try_start_3
    const-string v43, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 850
    if-eqz v15, :cond_b

    .line 851
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 852
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 853
    .local v13, "email":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 855
    .local v14, "emailId":Ljava/lang/String;
    if-nez v14, :cond_a

    .line 856
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 857
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/email_v2"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 867
    :cond_a
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v14, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/email_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 878
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v20    # "i":I
    :catch_2
    move-exception v43

    move-object/from16 v11, v43

    .line 879
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get emails"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_b
    const/4 v5, 0x0

    .line 885
    .local v5, "addresses":Lorg/json/JSONArray;
    :try_start_4
    const-string v43, "addresses"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 886
    if-eqz v5, :cond_d

    .line 887
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_d

    .line 888
    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 889
    .local v3, "address":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 891
    .local v4, "addressId":Ljava/lang/String;
    if-nez v4, :cond_c

    .line 892
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 893
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/postal-address_v2"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v43, "data1"

    const-string v44, "formatted"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v43, "data4"

    const-string v44, "streetAddress"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v43, "data7"

    const-string v44, "locality"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v43, "data8"

    const-string v44, "region"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v43, "data9"

    const-string v44, "postalCode"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v43, "data10"

    const-string v44, "country"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 907
    :cond_c
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v4, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/postal-address_v2"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "formatted"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data4"

    const-string v45, "streetAddress"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data7"

    const-string v45, "locality"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data8"

    const-string v45, "region"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data9"

    const-string v45, "postalCode"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data10"

    const-string v45, "country"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_6

    .line 922
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v4    # "addressId":Ljava/lang/String;
    .end local v20    # "i":I
    :catch_3
    move-exception v43

    move-object/from16 v11, v43

    .line 923
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get addresses"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_d
    const/16 v31, 0x0

    .line 929
    .local v31, "organizations":Lorg/json/JSONArray;
    :try_start_5
    const-string v43, "organizations"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 930
    if-eqz v31, :cond_f

    .line 931
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_7
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_f

    .line 932
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/json/JSONObject;

    .line 933
    .local v29, "org":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 935
    .local v30, "orgId":Ljava/lang/String;
    if-nez v30, :cond_e

    .line 936
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 937
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/organization"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v43, "data5"

    const-string v44, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v43, "data1"

    const-string v44, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v43, "data4"

    const-string v44, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 948
    :cond_e
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v30, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/organization"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data5"

    const-string v45, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data4"

    const-string v45, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 960
    .end local v20    # "i":I
    .end local v29    # "org":Lorg/json/JSONObject;
    .end local v30    # "orgId":Ljava/lang/String;
    :catch_4
    move-exception v43

    move-object/from16 v11, v43

    .line 961
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get organizations"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_f
    const/16 v23, 0x0

    .line 967
    .local v23, "ims":Lorg/json/JSONArray;
    :try_start_6
    const-string v43, "ims"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 968
    if-eqz v23, :cond_11

    .line 969
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_11

    .line 970
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 971
    .local v21, "im":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 973
    .local v22, "imId":Ljava/lang/String;
    if-nez v22, :cond_10

    .line 974
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/im"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 985
    :cond_10
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v22, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/im"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 996
    .end local v20    # "i":I
    .end local v21    # "im":Lorg/json/JSONObject;
    .end local v22    # "imId":Ljava/lang/String;
    :catch_5
    move-exception v43

    move-object/from16 v11, v43

    .line 997
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get emails"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_11
    const-string v43, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1002
    .local v27, "note":Ljava/lang/String;
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/note"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v43, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1011
    .local v26, "nickname":Ljava/lang/String;
    if-eqz v26, :cond_12

    .line 1012
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/nickname"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_12
    const/16 v42, 0x0

    .line 1023
    .local v42, "websites":Lorg/json/JSONArray;
    :try_start_7
    const-string v43, "websites"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v42

    .line 1024
    if-eqz v42, :cond_14

    .line 1025
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_b
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_14

    .line 1026
    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/json/JSONObject;

    .line 1027
    .local v40, "website":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1029
    .local v41, "websiteId":Ljava/lang/String;
    if-nez v41, :cond_13

    .line 1030
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/website"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v43, "data1"

    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v43, "data2"

    const-string v44, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 1041
    :cond_13
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v41, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/website"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    .line 1052
    .end local v20    # "i":I
    .end local v40    # "website":Lorg/json/JSONObject;
    .end local v41    # "websiteId":Ljava/lang/String;
    :catch_6
    move-exception v43

    move-object/from16 v11, v43

    .line 1053
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get websites"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_14
    const-string v43, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1058
    .local v6, "birthday":Ljava/lang/String;
    if-eqz v6, :cond_15

    .line 1059
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "contact_id=? AND mimetype=? AND data2=?"

    const/16 v45, 0x3

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object p1, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/contact_event"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    new-instance v47, Ljava/lang/String;

    const-string v48, "3"

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data2"

    const/16 v45, 0x3

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_15
    const/16 v37, 0x0

    .line 1072
    .local v37, "photos":Lorg/json/JSONArray;
    :try_start_8
    const-string v43, "photos"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 1073
    if-eqz v37, :cond_17

    .line 1074
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_d
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_17

    .line 1075
    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/json/JSONObject;

    .line 1076
    .local v35, "photo":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1077
    .local v36, "photoId":Ljava/lang/String;
    const-string v43, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1079
    .local v8, "bytes":[B
    if-nez v36, :cond_16

    .line 1080
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v43, "raw_contact_id"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v43, "mimetype"

    const-string v44, "vnd.android.cursor.item/photo"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v43, "is_super_primary"

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object v0, v9

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    const-string v43, "data15"

    move-object v0, v9

    move-object/from16 v1, v43

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1086
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1091
    :cond_16
    sget-object v43, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "_id=? AND mimetype=?"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v36, v45, v46

    const/16 v46, 0x1

    const-string v47, "vnd.android.cursor.item/photo"

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "is_super_primary"

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    const-string v44, "data15"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_e

    .line 1102
    .end local v8    # "bytes":[B
    .end local v20    # "i":I
    .end local v35    # "photo":Lorg/json/JSONObject;
    .end local v36    # "photoId":Ljava/lang/String;
    :catch_7
    move-exception v43

    move-object/from16 v11, v43

    .line 1103
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v43, "ContactsAccessor"

    const-string v44, "Could not get photos"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_17
    const/16 v39, 0x1

    .line 1110
    .local v39, "retVal":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string v44, "com.android.contacts"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1121
    :goto_f
    return v39

    .line 1111
    :catch_8
    move-exception v43

    move-object/from16 v11, v43

    .line 1112
    .local v11, "e":Landroid/os/RemoteException;
    const-string v43, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    const-string v43, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    const/16 v39, 0x0

    .line 1119
    goto :goto_f

    .line 1115
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v43

    move-object/from16 v11, v43

    .line 1116
    .local v11, "e":Landroid/content/OperationApplicationException;
    const-string v43, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    const-string v43, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    const/16 v39, 0x0

    goto :goto_f
.end method

.method private nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 568
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 570
    .local v0, "contactName":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "data3"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "familyName":Ljava/lang/String;
    const-string v8, "data2"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "givenName":Ljava/lang/String;
    const-string v8, "data5"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "middleName":Ljava/lang/String;
    const-string v8, "data4"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "honorificPrefix":Ljava/lang/String;
    const-string v8, "data6"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "honorificSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 578
    .local v3, "formatted":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_0
    if-eqz v4, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :cond_1
    if-eqz v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_2
    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    :cond_3
    if-eqz v6, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_4
    const-string v8, "familyName"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v8, "givenName"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v8, "middleName"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v8, "honorificPrefix"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v8, "honorificSuffix"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v8, "formatted"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v2    # "familyName":Ljava/lang/String;
    .end local v3    # "formatted":Ljava/lang/StringBuffer;
    .end local v4    # "givenName":Ljava/lang/String;
    .end local v5    # "honorificPrefix":Ljava/lang/String;
    .end local v6    # "honorificSuffix":Ljava/lang/String;
    .end local v7    # "middleName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 590
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 591
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 529
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 531
    .local v1, "organization":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v2, "department"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v2, "name"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v2, "title"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-object v1

    .line 535
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 536
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 602
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 604
    .local v2, "phoneNumber":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 606
    const-string v3, "value"

    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v3, "type"

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/phonegap/ContactAccessorSdk5;->getPhoneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 614
    :goto_0
    return-object v2

    .line 608
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 609
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 611
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 612
    .local v1, "excp":Ljava/lang/Exception;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 677
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 679
    .local v2, "photo":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 681
    const-string v4, "type"

    const-string v5, "url"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 683
    .local v1, "person":Landroid/net/Uri;
    const-string v4, "photo"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 684
    .local v3, "photoUri":Landroid/net/Uri;
    const-string v4, "value"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v1    # "person":Landroid/net/Uri;
    .end local v3    # "photoUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 685
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 686
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "organizations"    # Lorg/json/JSONArray;
    .param p3, "addresses"    # Lorg/json/JSONArray;
    .param p4, "phones"    # Lorg/json/JSONArray;
    .param p5, "emails"    # Lorg/json/JSONArray;
    .param p6, "ims"    # Lorg/json/JSONArray;
    .param p7, "websites"    # Lorg/json/JSONArray;
    .param p8, "photos"    # Lorg/json/JSONArray;

    .prologue
    .line 393
    :try_start_0
    const-string v1, "organizations"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v1, "addresses"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v1, "phoneNumbers"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v1, "emails"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v1, "ims"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v1, "websites"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v1, "photos"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-object p1

    .line 401
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 402
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 659
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 661
    .local v1, "website":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 663
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/phonegap/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    return-object v1

    .line 665
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 666
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1484
    iget-object v1, p0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1487
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
    .locals 11
    .param p1, "contact"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 699
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    .line 700
    .local v7, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 701
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 703
    .local v1, "account":Landroid/accounts/Account;
    array-length v8, v2

    if-ne v8, v9, :cond_1

    .line 704
    aget-object v1, v2, v10

    .line 733
    :cond_0
    :goto_0
    if-nez v1, :cond_7

    move v8, v10

    .line 743
    :goto_1
    return v8

    .line 705
    :cond_1
    array-length v8, v2

    if-le v8, v9, :cond_0

    .line 706
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v0, v3, v4

    .line 707
    .local v0, "a":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v9, "eas"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, ".+@.+\\.+.+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 709
    move-object v1, v0

    .line 713
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_2
    if-nez v1, :cond_3

    .line 714
    move-object v3, v2

    array-length v6, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_3

    aget-object v0, v3, v4

    .line 715
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, ".+@.+\\.+.+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 717
    move-object v1, v0

    .line 722
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    if-nez v1, :cond_0

    .line 723
    move-object v3, v2

    array-length v6, v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_0

    aget-object v0, v3, v4

    .line 724
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, ".+@.+\\.+.+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 726
    move-object v1, v0

    .line 727
    goto :goto_0

    .line 706
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 714
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 723
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 736
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_7
    const-string v8, "id"

    invoke-virtual {p0, p1, v8}, Lcom/phonegap/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, "id":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 739
    invoke-direct {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk5;->createNewContact(Lorg/json/JSONObject;Landroid/accounts/Account;)Z

    move-result v8

    goto :goto_1

    .line 743
    :cond_8
    invoke-direct {p0, v5, p1, v1}, Lcom/phonegap/ContactAccessorSdk5;->modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Landroid/accounts/Account;)Z

    move-result v8

    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 42
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 149
    .local v36, "totalStart":J
    const-string v33, ""

    .line 150
    .local v33, "searchTerm":Ljava/lang/String;
    const v23, 0x7fffffff

    .line 151
    .local v23, "limit":I
    const/16 v25, 0x1

    .line 153
    .local v25, "multiple":Z
    if-eqz p2, :cond_2

    .line 154
    const-string v3, "filter"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 155
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 156
    const-string v33, "%"

    .line 162
    :goto_0
    :try_start_0
    const-string v3, "multiple"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v25

    .line 163
    if-nez v25, :cond_0

    .line 164
    const/16 v23, 0x1

    .line 179
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/phonegap/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v31

    .line 182
    .local v31, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/ContactAccessor$WhereOptions;

    move-result-object v39

    .line 185
    .local v39, "whereOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    invoke-virtual/range {v39 .. v39}, Lcom/phonegap/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v39 .. v39}, Lcom/phonegap/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 193
    .local v20, "idCursor":Landroid/database/Cursor;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v16, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    const-string v3, "contact_id"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    .end local v16    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "idCursor":Landroid/database/Cursor;
    .end local v31    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v39    # "whereOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_0

    .line 171
    :cond_2
    const-string v33, "%"

    goto :goto_1

    .line 197
    .restart local v16    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "idCursor":Landroid/database/Cursor;
    .restart local v31    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v39    # "whereOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    :cond_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lcom/phonegap/ContactAccessor$WhereOptions;

    move-result-object v21

    .line 203
    .local v21, "idOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/ContactAccessorSdk5;->mApp:Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/phonegap/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/phonegap/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 212
    .local v13, "c":Landroid/database/Cursor;
    const-string v15, ""

    .line 213
    .local v15, "contactId":Ljava/lang/String;
    const-string v32, ""

    .line 214
    .local v32, "rawId":Ljava/lang/String;
    const-string v27, ""

    .line 215
    .local v27, "oldContactId":Ljava/lang/String;
    const/16 v26, 0x1

    .line 216
    .local v26, "newContact":Z
    const-string v24, ""

    .line 218
    .local v24, "mimetype":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 219
    .local v17, "contacts":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v4, "contact":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 221
    .local v5, "organizations":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 222
    .local v6, "addresses":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .local v7, "phones":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 224
    .local v8, "emails":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .local v9, "ims":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 226
    .local v10, "websites":Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 228
    .local v11, "photos":Lorg/json/JSONArray;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 229
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v12, 0x1

    sub-int v12, v23, v12

    if-gt v3, v12, :cond_12

    .line 231
    :try_start_1
    const-string v3, "contact_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 232
    const-string v3, "raw_contact_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 235
    invoke-interface {v13}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_4

    .line 236
    move-object/from16 v27, v15

    .line 241
    :cond_4
    move-object/from16 v0, v27

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v3, p0

    .line 244
    invoke-direct/range {v3 .. v11}, Lcom/phonegap/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .end local v4    # "contact":Lorg/json/JSONObject;
    .local v14, "contact":Lorg/json/JSONObject;
    :try_start_2
    new-instance v28, Lorg/json/JSONArray;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .local v28, "organizations":Lorg/json/JSONArray;
    :try_start_3
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 251
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .local v12, "addresses":Lorg/json/JSONArray;
    :try_start_4
    new-instance v29, Lorg/json/JSONArray;

    invoke-direct/range {v29 .. v29}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 252
    .end local v7    # "phones":Lorg/json/JSONArray;
    .local v29, "phones":Lorg/json/JSONArray;
    :try_start_5
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 253
    .end local v8    # "emails":Lorg/json/JSONArray;
    .local v19, "emails":Lorg/json/JSONArray;
    :try_start_6
    new-instance v22, Lorg/json/JSONArray;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 254
    .end local v9    # "ims":Lorg/json/JSONArray;
    .local v22, "ims":Lorg/json/JSONArray;
    :try_start_7
    new-instance v38, Lorg/json/JSONArray;

    invoke-direct/range {v38 .. v38}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 255
    .end local v10    # "websites":Lorg/json/JSONArray;
    .local v38, "websites":Lorg/json/JSONArray;
    :try_start_8
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    .line 258
    .end local v11    # "photos":Lorg/json/JSONArray;
    .local v30, "photos":Lorg/json/JSONArray;
    const/16 v26, 0x1

    move-object/from16 v11, v30

    .end local v30    # "photos":Lorg/json/JSONArray;
    .restart local v11    # "photos":Lorg/json/JSONArray;
    move-object/from16 v10, v38

    .end local v38    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v22

    .end local v22    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v19

    .end local v19    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v29

    .end local v29    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .line 263
    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    :cond_5
    if-eqz v26, :cond_6

    .line 264
    const/16 v26, 0x0

    .line 265
    :try_start_9
    const-string v3, "id"

    invoke-virtual {v4, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v3, "rawId"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v3, "displayName"

    const-string v12, "data1"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_6
    const-string v3, "mimetype"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 273
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "name"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 275
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_7
    :goto_4
    move-object/from16 v27, v15

    goto/16 :goto_3

    .line 277
    :cond_8
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 279
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 320
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 321
    .local v18, "e":Lorg/json/JSONException;
    :goto_5
    const-string v3, "ContactsAccessor"

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v0, v3

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 281
    .end local v18    # "e":Lorg/json/JSONException;
    :cond_9
    :try_start_a
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 285
    :cond_a
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 287
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 289
    :cond_b
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 291
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 293
    :cond_c
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 295
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 297
    :cond_d
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "note"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 299
    const-string v3, "note"

    const-string v12, "data1"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 301
    :cond_e
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 303
    const-string v3, "nickname"

    const-string v12, "data1"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 305
    :cond_f
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 307
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/phonegap/ContactAccessorSdk5;->websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 309
    :cond_10
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 310
    const/4 v3, 0x3

    const-string v12, "data2"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v3, v12, :cond_7

    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 312
    const-string v3, "birthday"

    const-string v12, "data1"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 315
    :cond_11
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 317
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk5;->photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4

    .line 329
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v3

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    move-object/from16 v3, p0

    .line 330
    invoke-direct/range {v3 .. v11}, Lcom/phonegap/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 334
    :cond_13
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 338
    .local v34, "totalEnd":J
    const-string v3, "ContactsAccessor"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "contact":Lorg/json/JSONObject;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total time = "

    .end local v5    # "organizations":Lorg/json/JSONArray;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v40, v34, v36

    move-object v0, v4

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v17

    .line 320
    .end local v34    # "totalEnd":J
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    :catch_2
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    :catch_3
    move-exception v3

    move-object/from16 v18, v3

    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v29    # "phones":Lorg/json/JSONArray;
    :catch_4
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v7, v29

    .end local v29    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v19    # "emails":Lorg/json/JSONArray;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v29    # "phones":Lorg/json/JSONArray;
    :catch_5
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v8, v19

    .end local v19    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v29

    .end local v29    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v19    # "emails":Lorg/json/JSONArray;
    .restart local v22    # "ims":Lorg/json/JSONArray;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v29    # "phones":Lorg/json/JSONArray;
    :catch_6
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v9, v22

    .end local v22    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v19

    .end local v19    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v29

    .end local v29    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .end local v10    # "websites":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v14    # "contact":Lorg/json/JSONObject;
    .restart local v19    # "emails":Lorg/json/JSONArray;
    .restart local v22    # "ims":Lorg/json/JSONArray;
    .restart local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v29    # "phones":Lorg/json/JSONArray;
    .restart local v38    # "websites":Lorg/json/JSONArray;
    :catch_7
    move-exception v3

    move-object/from16 v18, v3

    move-object/from16 v10, v38

    .end local v38    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v22

    .end local v22    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v19

    .end local v19    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v29

    .end local v29    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v28

    .end local v28    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object v4, v14

    .end local v14    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 166
    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .end local v10    # "websites":Lorg/json/JSONArray;
    .end local v11    # "photos":Lorg/json/JSONArray;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v15    # "contactId":Ljava/lang/String;
    .end local v16    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "contacts":Lorg/json/JSONArray;
    .end local v20    # "idCursor":Landroid/database/Cursor;
    .end local v21    # "idOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    .end local v24    # "mimetype":Ljava/lang/String;
    .end local v26    # "newContact":Z
    .end local v27    # "oldContactId":Ljava/lang/String;
    .end local v31    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v32    # "rawId":Ljava/lang/String;
    .end local v39    # "whereOptions":Lcom/phonegap/ContactAccessor$WhereOptions;
    :catch_8
    move-exception v3

    goto/16 :goto_1
.end method
