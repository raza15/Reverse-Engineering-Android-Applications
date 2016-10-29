.class public Lcom/phonegap/FileUtils;
.super Lcom/phonegap/api/Plugin;
.source "FileUtils.java"


# static fields
.field public static ABORT_ERR:I = 0x0

.field public static APPLICATION:I = 0x0

.field public static ENCODING_ERR:I = 0x0

.field public static INVALID_MODIFICATION_ERR:I = 0x0

.field public static INVALID_STATE_ERR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field public static NOT_FOUND_ERR:I

.field public static NOT_READABLE_ERR:I

.field public static NO_MODIFICATION_ALLOWED_ERR:I

.field public static PATH_EXISTS_ERR:I

.field public static PERSISTENT:I

.field public static QUOTA_EXCEEDED_ERR:I

.field public static RESOURCE:I

.field public static SECURITY_ERR:I

.field public static SYNTAX_ERR:I

.field public static TEMPORARY:I

.field public static TYPE_MISMATCH_ERR:I


# instance fields
.field f_in:Ljava/io/FileReader;

.field f_out:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 41
    sput v1, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    .line 42
    sput v2, Lcom/phonegap/FileUtils;->SECURITY_ERR:I

    .line 43
    sput v3, Lcom/phonegap/FileUtils;->ABORT_ERR:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    .line 46
    const/4 v0, 0x5

    sput v0, Lcom/phonegap/FileUtils;->ENCODING_ERR:I

    .line 47
    const/4 v0, 0x6

    sput v0, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 48
    const/4 v0, 0x7

    sput v0, Lcom/phonegap/FileUtils;->INVALID_STATE_ERR:I

    .line 49
    const/16 v0, 0x8

    sput v0, Lcom/phonegap/FileUtils;->SYNTAX_ERR:I

    .line 50
    const/16 v0, 0x9

    sput v0, Lcom/phonegap/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 51
    const/16 v0, 0xa

    sput v0, Lcom/phonegap/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 52
    const/16 v0, 0xb

    sput v0, Lcom/phonegap/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 53
    const/16 v0, 0xc

    sput v0, Lcom/phonegap/FileUtils;->PATH_EXISTS_ERR:I

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/FileUtils;->TEMPORARY:I

    .line 56
    sput v1, Lcom/phonegap/FileUtils;->PERSISTENT:I

    .line 57
    sput v2, Lcom/phonegap/FileUtils;->RESOURCE:I

    .line 58
    sput v3, Lcom/phonegap/FileUtils;->APPLICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 67
    return-void
.end method

.method private atRootDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1}, Lcom/phonegap/api/PhonegapActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    const/4 v0, 0x1

    .line 702
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "srcDir"    # Ljava/io/File;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/phonegap/file/NoModificationAllowedException;,
            Lcom/phonegap/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 412
    new-instance v5, Lcom/phonegap/file/InvalidModificationException;

    const-string v6, "Can\'t rename a file to a directory"

    invoke-direct {v5, v6}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/phonegap/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    new-instance v5, Lcom/phonegap/file/InvalidModificationException;

    const-string v6, "Can\'t copy itself into itself"

    invoke-direct {v5, v6}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 422
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    new-instance v5, Lcom/phonegap/file/NoModificationAllowedException;

    const-string v6, "Couldn\'t create the destination direcotry"

    invoke-direct {v5, v6}, Lcom/phonegap/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 429
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 430
    invoke-direct {p0, v2, p2}, Lcom/phonegap/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 428
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "destination":Ljava/io/File;
    invoke-direct {p0, v2, v1}, Lcom/phonegap/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    goto :goto_1

    .line 437
    .end local v1    # "destination":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    invoke-direct {p0, p2}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    return-object v5
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/phonegap/file/InvalidModificationException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    new-instance v1, Lcom/phonegap/file/InvalidModificationException;

    const-string v2, "Can\'t rename a file to a directory"

    invoke-direct {v1, v2}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 382
    .local v0, "input":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 384
    .local v5, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 386
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 387
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 395
    invoke-direct {p0, p2}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method private createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "fp"    # Ljava/io/File;
    .param p3, "destination"    # Ljava/io/File;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 353
    .local v0, "destFile":Ljava/io/File;
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    const/4 p1, 0x0

    .line 357
    :cond_1
    if-eqz p1, :cond_2

    .line 358
    new-instance v0, Ljava/io/File;

    .end local v0    # "destFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v0    # "destFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 360
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "destFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "destFile":Ljava/io/File;
    goto :goto_0
.end method

.method private createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "fp":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    new-instance v0, Ljava/io/File;

    .end local v0    # "fp":Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .restart local v0    # "fp":Ljava/io/File;
    :goto_0
    return-object v0

    .line 670
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "fp":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "fp":Ljava/io/File;
    goto :goto_0
.end method

.method private getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 808
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v1, "isFile"

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 809
    const-string v1, "isDirectory"

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 810
    const-string v1, "name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string v1, "fullPath"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    return-object v0
.end method

.method private getEntry(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 826
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 5
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "directory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/phonegap/file/FileExistsException;,
            Ljava/io/IOException;,
            Lcom/phonegap/file/TypeMismatchException;,
            Lcom/phonegap/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "create":Z
    const/4 v1, 0x0

    .line 611
    .local v1, "exclusive":Z
    if-eqz p3, :cond_0

    .line 612
    const-string v3, "create"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 613
    if-eqz v0, :cond_0

    .line 614
    const-string v3, "exclusive"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 619
    :cond_0
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    new-instance v3, Lcom/phonegap/file/EncodingException;

    const-string v4, "This file has a : in it\'s name"

    invoke-direct {v3, v4}, Lcom/phonegap/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 623
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/phonegap/FileUtils;->createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 625
    .local v2, "fp":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 626
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 627
    new-instance v3, Lcom/phonegap/file/FileExistsException;

    const-string v4, "create/exclusive fails"

    invoke-direct {v3, v4}, Lcom/phonegap/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    :cond_2
    if-eqz p4, :cond_3

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 634
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 635
    new-instance v3, Lcom/phonegap/file/FileExistsException;

    const-string v4, "create fails"

    invoke-direct {v3, v4}, Lcom/phonegap/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 639
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 640
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "path does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 642
    :cond_5
    if-eqz p4, :cond_6

    .line 643
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 644
    new-instance v3, Lcom/phonegap/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is file"

    invoke-direct {v3, v4}, Lcom/phonegap/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 647
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 648
    new-instance v3, Lcom/phonegap/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is directory"

    invoke-direct {v3, v4}, Lcom/phonegap/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 654
    :cond_7
    invoke-direct {p0, v2}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 742
    .local v1, "metadata":Lorg/json/JSONObject;
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 743
    const-string v2, "type"

    invoke-static {p1}, Lcom/phonegap/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v2, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v2, "fullPath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v2, "lastModifiedDate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 748
    return-object v1
.end method

.method private getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 714
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 717
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Failed to find file in getMetadata"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 721
    .local v1, "metadata":Lorg/json/JSONObject;
    const-string v2, "modificationTime"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 723
    return-object v1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 913
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 914
    .local v0, "map":Landroid/webkit/MimeTypeMap;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getParent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phonegap/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 992
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 994
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 997
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 453
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "srcDir"    # Ljava/io/File;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/phonegap/file/FileExistsException;,
            Lcom/phonegap/file/NoModificationAllowedException;,
            Lcom/phonegap/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Lcom/phonegap/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/phonegap/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    new-instance v0, Lcom/phonegap/file/InvalidModificationException;

    const-string v1, "Can\'t move itself into itself"

    invoke-direct {v0, v1}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 512
    new-instance v0, Lcom/phonegap/file/InvalidModificationException;

    const-string v1, "directory is not empty"

    invoke-direct {v0, v1}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 524
    :cond_3
    invoke-direct {p0, p2}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/phonegap/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lcom/phonegap/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    :cond_1
    invoke-direct {p0, p2}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private readEntries(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 269
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 271
    .local v0, "entries":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 273
    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 274
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/phonegap/file/NoModificationAllowedException;,
            Lcom/phonegap/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "fp":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Lcom/phonegap/file/NoModificationAllowedException;

    const-string v2, "You can\'t delete the root directory"

    invoke-direct {v1, v2}, Lcom/phonegap/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 588
    new-instance v1, Lcom/phonegap/file/InvalidModificationException;

    const-string v2, "You can\'t delete a directory that is not empty."

    invoke-direct {v1, v2}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeDirRecursively(Ljava/io/File;)Z
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/phonegap/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 558
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/phonegap/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    new-instance v4, Lcom/phonegap/file/FileExistsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/phonegap/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private removeRecursively(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/phonegap/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "fp":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    const/4 v1, 0x0

    .line 545
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/phonegap/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method private requestFileSystem(I)Lorg/json/JSONObject;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 761
    .local v1, "fs":Lorg/json/JSONObject;
    sget v2, Lcom/phonegap/FileUtils;->TEMPORARY:I

    if-ne p1, v2, :cond_1

    .line 762
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    const-string v2, "name"

    const-string v3, "temporary"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v4}, Lcom/phonegap/api/PhonegapActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phonegap/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v3}, Lcom/phonegap/api/PhonegapActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 795
    .end local v0    # "fp":Ljava/io/File;
    :goto_0
    return-object v1

    .line 772
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SD Card not mounted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 775
    :cond_1
    sget v2, Lcom/phonegap/FileUtils;->PERSISTENT:I

    if-ne p1, v2, :cond_3

    .line 776
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 777
    const-string v2, "name"

    const-string v3, "persistent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v2, "root"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 780
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SD Card not mounted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :cond_3
    sget v2, Lcom/phonegap/FileUtils;->RESOURCE:I

    if-ne p1, v2, :cond_4

    .line 784
    const-string v2, "name"

    const-string v3, "resource"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 787
    :cond_4
    sget v2, Lcom/phonegap/FileUtils;->APPLICATION:I

    if-ne p1, v2, :cond_5

    .line 788
    const-string v2, "name"

    const-string v3, "application"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 792
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No filesystem of type requested"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "decoded":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "testUrl":Ljava/net/URL;
    const/4 v1, 0x0

    .line 239
    .local v1, "fp":Ljava/io/File;
    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    new-instance v1, Ljava/io/File;

    .end local v1    # "fp":Ljava/io/File;
    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v1    # "fp":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 242
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "fp":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "fp":Ljava/io/File;
    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 250
    :cond_2
    invoke-direct {p0, v1}, Lcom/phonegap/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private transferTo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "newParent"    # Lorg/json/JSONObject;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/phonegap/file/FileExistsException;,
            Lcom/phonegap/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lcom/phonegap/file/InvalidModificationException;,
            Lcom/phonegap/file/EncodingException;
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p3, :cond_0

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    new-instance v3, Lcom/phonegap/file/EncodingException;

    const-string v4, "Bad file name"

    invoke-direct {v3, v4}, Lcom/phonegap/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "source":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 306
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "The source does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "fullPath"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "destinationDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "The source does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    :cond_2
    invoke-direct {p0, p3, v2, v1}, Lcom/phonegap/FileUtils;->createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 322
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    new-instance v3, Lcom/phonegap/file/InvalidModificationException;

    const-string v4, "Can\'t copy a file onto itself"

    invoke-direct {v3, v4}, Lcom/phonegap/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    if-eqz p4, :cond_4

    .line 328
    invoke-direct {p0, v2, v0}, Lcom/phonegap/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    .line 336
    :goto_0
    return-object v3

    .line 330
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/phonegap/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 333
    :cond_5
    if-eqz p4, :cond_6

    .line 334
    invoke-direct {p0, v2, v0}, Lcom/phonegap/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 336
    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/phonegap/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .local v1, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 976
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 977
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-wide v2, p2

    .line 981
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 25
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v19, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 79
    .local v19, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v15, ""

    .line 84
    .local v15, "result":Ljava/lang/String;
    :try_start_0
    const-string v21, "testSaveLocationExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 85
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v5

    .line 86
    .local v5, "b":Z
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    .line 218
    .end local v5    # "b":Z
    :goto_0
    return-object v21

    .line 88
    :cond_0
    const-string v21, "getFreeDiskSpace"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 89
    invoke-static {}, Lcom/phonegap/DirectoryManager;->getFreeDiskSpace()J

    move-result-wide v12

    .line 90
    .local v12, "l":J
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-wide v0, v12

    long-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_0 .. :try_end_0} :catch_9

    goto :goto_0

    .line 188
    .end local v12    # "l":J
    :catch_0
    move-exception v21

    move-object/from16 v6, v21

    .line 189
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 190
    .local v9, "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 216
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_1
    move-exception v21

    move-object/from16 v6, v21

    .line 217
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct/range {v21 .. v22}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 92
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v21, "testFileExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 93
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/phonegap/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v5

    .line 94
    .restart local v5    # "b":Z
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_0

    .line 191
    .end local v5    # "b":Z
    :catch_2
    move-exception v21

    move-object/from16 v6, v21

    .line 192
    .local v6, "e":Lcom/phonegap/file/FileExistsException;
    :try_start_3
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->PATH_EXISTS_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 193
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 96
    .end local v6    # "e":Lcom/phonegap/file/FileExistsException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    const-string v21, "testDirectoryExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 97
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/phonegap/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v5

    .line 98
    .restart local v5    # "b":Z
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    .line 194
    .end local v5    # "b":Z
    :catch_3
    move-exception v21

    move-object/from16 v6, v21

    .line 195
    .local v6, "e":Lcom/phonegap/file/NoModificationAllowedException;
    :try_start_5
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 196
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 100
    .end local v6    # "e":Lcom/phonegap/file/NoModificationAllowedException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_3
    :try_start_6
    const-string v21, "readAsText"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 101
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/FileUtils;->readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, "s":Ljava/lang/String;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_6 .. :try_end_6} :catch_9

    goto/16 :goto_0

    .line 197
    .end local v16    # "s":Ljava/lang/String;
    :catch_4
    move-exception v21

    move-object/from16 v6, v21

    .line 198
    .local v6, "e":Lorg/json/JSONException;
    :try_start_7
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 199
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 104
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_4
    :try_start_8
    const-string v21, "readAsDataURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 105
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/phonegap/FileUtils;->readAsDataURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 106
    .restart local v16    # "s":Ljava/lang/String;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_0

    .line 200
    .end local v16    # "s":Ljava/lang/String;
    :catch_5
    move-exception v21

    move-object/from16 v6, v21

    .line 201
    .local v6, "e":Lcom/phonegap/file/InvalidModificationException;
    :try_start_9
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 202
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 108
    .end local v6    # "e":Lcom/phonegap/file/InvalidModificationException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_5
    :try_start_a
    const-string v21, "writeAsText"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 109
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/phonegap/FileUtils;->writeAsText(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    :cond_6
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    .line 203
    :catch_6
    move-exception v21

    move-object/from16 v6, v21

    .line 204
    .local v6, "e":Ljava/net/MalformedURLException;
    :try_start_b
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->ENCODING_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 205
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 111
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_7
    :try_start_c
    const-string v21, "write"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 112
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/phonegap/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v10

    .line 113
    .local v10, "fileSize":J
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-wide v0, v10

    long-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_0

    .line 206
    .end local v10    # "fileSize":J
    :catch_7
    move-exception v21

    move-object/from16 v6, v21

    .line 207
    .local v6, "e":Ljava/io/IOException;
    :try_start_d
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 208
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 115
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_8
    :try_start_e
    const-string v21, "truncate"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 116
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v10

    .line 117
    .restart local v10    # "fileSize":J
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-wide v0, v10

    long-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_0

    .line 209
    .end local v10    # "fileSize":J
    :catch_8
    move-exception v21

    move-object/from16 v6, v21

    .line 210
    .local v6, "e":Lcom/phonegap/file/EncodingException;
    :try_start_f
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->ENCODING_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 211
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .line 119
    .end local v6    # "e":Lcom/phonegap/file/EncodingException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :cond_9
    :try_start_10
    const-string v21, "requestFileSystem"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 120
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v17

    .line 121
    .local v17, "size":J
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-eqz v21, :cond_a

    .line 122
    invoke-static {}, Lcom/phonegap/DirectoryManager;->getFreeDiskSpace()J

    move-result-wide v21

    cmp-long v21, v17, v21

    if-lez v21, :cond_a

    .line 123
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->QUOTA_EXCEEDED_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 124
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_0

    .line 212
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v17    # "size":J
    :catch_9
    move-exception v21

    move-object/from16 v6, v21

    .line 213
    .local v6, "e":Lcom/phonegap/file/TypeMismatchException;
    :try_start_11
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->TYPE_MISMATCH_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 214
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    .line 127
    .end local v6    # "e":Lcom/phonegap/file/TypeMismatchException;
    .end local v9    # "error":Lorg/json/JSONObject;
    .restart local v17    # "size":J
    :cond_a
    const/16 v21, 0x0

    :try_start_12
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->requestFileSystem(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 128
    .local v14, "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castFS"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v17    # "size":J
    :cond_b
    const-string v21, "resolveLocalFileSystemURI"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 131
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 132
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_c
    const-string v21, "getMetadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 135
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 136
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_d
    const-string v21, "getFileMetadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 139
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 140
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_e
    const-string v21, "getParent"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 143
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->getParent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 144
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_f
    const-string v21, "getDirectory"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 147
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phonegap/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v14

    .line 148
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_10
    const-string v21, "getFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 151
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phonegap/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v14

    .line 152
    .restart local v14    # "obj":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v14    # "obj":Lorg/json/JSONObject;
    :cond_11
    const-string v21, "remove"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 157
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->remove(Ljava/lang/String;)Z

    move-result v20

    .line 159
    .local v20, "success":Z
    if-eqz v20, :cond_12

    .line 160
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 162
    :cond_12
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 163
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 166
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v20    # "success":Z
    :cond_13
    const-string v21, "removeRecursively"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 167
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->removeRecursively(Ljava/lang/String;)Z

    move-result v20

    .line 168
    .restart local v20    # "success":Z
    if-eqz v20, :cond_14

    .line 169
    new-instance v21, Lcom/phonegap/api/PluginResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 171
    :cond_14
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "code"

    sget v23, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 172
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    sget-object v22, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 175
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v20    # "success":Z
    :cond_15
    const-string v21, "moveTo"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 176
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phonegap/FileUtils;->transferTo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 177
    .local v8, "entry":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v8

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v8    # "entry":Lorg/json/JSONObject;
    :cond_16
    const-string v21, "copyTo"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 180
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phonegap/FileUtils;->transferTo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 181
    .restart local v8    # "entry":Lorg/json/JSONObject;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntry"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v8

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v8    # "entry":Lorg/json/JSONObject;
    :cond_17
    const-string v21, "readEntries"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 184
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/phonegap/FileUtils;->readEntries(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 185
    .local v7, "entries":Lorg/json/JSONArray;
    new-instance v21, Lcom/phonegap/api/PluginResult;

    const-string v22, "window.localFileSystem._castEntries"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/phonegap/file/FileExistsException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/phonegap/file/NoModificationAllowedException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lcom/phonegap/file/InvalidModificationException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lcom/phonegap/file/EncodingException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Lcom/phonegap/file/TypeMismatchException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 836
    const-string v0, "testSaveLocationExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 848
    :goto_0
    return v0

    .line 839
    :cond_0
    const-string v0, "getFreeDiskSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 840
    goto :goto_0

    .line 842
    :cond_1
    const-string v0, "testFileExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 843
    goto :goto_0

    .line 845
    :cond_2
    const-string v0, "testDirectoryExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 846
    goto :goto_0

    .line 848
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAsDataURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 883
    new-array v3, v11, [B

    .line 884
    .local v3, "bytes":[B
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x400

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 885
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 886
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 887
    .local v7, "numRead":I
    :goto_0
    invoke-virtual {v1, v3, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_0

    .line 888
    invoke-virtual {v2, v3, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 892
    :cond_0
    const/4 v4, 0x0

    .line 893
    .local v4, "contentType":Ljava/lang/String;
    const-string v8, "content:"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 894
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 895
    .local v6, "fileUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v8}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 901
    .end local v6    # "fileUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 902
    .local v0, "base64":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";base64,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "data":Ljava/lang/String;
    return-object v5

    .line 898
    .end local v0    # "base64":[B
    .end local v5    # "data":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/phonegap/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 865
    new-array v2, v7, [B

    .line 866
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 867
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 868
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 869
    .local v3, "numRead":I
    :goto_0
    invoke-virtual {v0, v2, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 870
    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 872
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "append":Z
    if-lez p3, :cond_0

    .line 949
    int-to-long v5, p3

    invoke-direct {p0, p1, v5, v6}, Lcom/phonegap/FileUtils;->truncateFile(Ljava/lang/String;J)J

    .line 950
    const/4 v0, 0x1

    .line 953
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 954
    .local v4, "rawData":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 955
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 956
    .local v3, "out":Ljava/io/FileOutputStream;
    array-length v5, v4

    new-array v1, v5, [B

    .line 957
    .local v1, "buff":[B
    array-length v5, v1

    invoke-virtual {v2, v1, v7, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 958
    array-length v5, v4

    invoke-virtual {v3, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 959
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 960
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 962
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    return-wide v5
.end method

.method public writeAsText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 926
    move-object v0, p1

    .line 927
    .local v0, "FilePath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 928
    .local v4, "rawData":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 929
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 930
    .local v3, "out":Ljava/io/FileOutputStream;
    array-length v5, v4

    new-array v1, v5, [B

    .line 931
    .local v1, "buff":[B
    array-length v5, v1

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 932
    array-length v5, v4

    invoke-virtual {v3, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 933
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 934
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 935
    return-void
.end method
