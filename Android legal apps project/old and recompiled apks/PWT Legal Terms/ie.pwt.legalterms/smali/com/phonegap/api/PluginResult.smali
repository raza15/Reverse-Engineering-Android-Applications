.class public Lcom/phonegap/api/PluginResult;
.super Ljava/lang/Object;
.source "PluginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/api/PluginResult$Status;
    }
.end annotation


# static fields
.field public static StatusMessages:[Ljava/lang/String;


# instance fields
.field private cast:Ljava/lang/String;

.field private keepCallback:Z

.field private final message:Ljava/lang/String;

.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Class not found"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Illegal access"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Instantiation error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Malformed url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JSON error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/phonegap/api/PluginResult;->StatusMessages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/phonegap/api/PluginResult;->StatusMessages:[Ljava/lang/String;

    iget v2, p0, Lcom/phonegap/api/PluginResult;->status:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;F)V
    .locals 2
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "f"    # F

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;I)V
    .locals 2
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "i"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 28
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONArray;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 45
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONArray;
    .param p3, "cast"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 33
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 50
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONObject;
    .param p3, "cast"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 39
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    .locals 2
    .param p1, "status"    # Lcom/phonegap/api/PluginResult$Status;
    .param p2, "b"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phonegap/api/PluginResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",keepCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeepCallback()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phonegap/api/PluginResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/phonegap/api/PluginResult;->status:I

    return v0
.end method

.method public setKeepCallback(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/phonegap/api/PluginResult;->keepCallback:Z

    .line 70
    return-void
.end method

.method public toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneGap.callbackError(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phonegap/api/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSuccessCallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/api/PluginResult;->cast:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/phonegap/api/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.callbackSuccess(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',temp);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.callbackSuccess(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/phonegap/api/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
