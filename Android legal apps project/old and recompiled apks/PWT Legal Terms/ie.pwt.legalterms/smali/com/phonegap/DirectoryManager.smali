.class public Lcom/phonegap/DirectoryManager;
.super Ljava/lang/Object;
.source "DirectoryManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DirectoryManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "file1"    # Ljava/lang/String;
    .param p1, "file2"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "newPath":Ljava/io/File;
    :goto_0
    return-object v0

    .line 110
    .end local v0    # "newPath":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "newPath":Ljava/io/File;
    goto :goto_0
.end method

.method protected static getFreeDiskSpace()J
    .locals 14

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "status":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 57
    .local v5, "freeSpace":J
    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 60
    .local v7, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 61
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 62
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 63
    .local v0, "availableBlocks":J
    mul-long v10, v0, v2

    const-wide/16 v12, 0x400

    div-long v5, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    move-wide v10, v5

    .line 72
    :goto_1
    return-wide v10

    .line 64
    :catch_0
    move-exception v10

    move-object v4, v10

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v10, -0x1

    goto :goto_1
.end method

.method protected static testFileExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 37
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/phonegap/DirectoryManager;->constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "newPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 44
    .end local v0    # "newPath":Ljava/io/File;
    .end local v1    # "path":Ljava/io/File;
    .local v2, "status":Z
    :goto_0
    return v2

    .line 42
    .end local v2    # "status":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "status":Z
    goto :goto_0
.end method

.method protected static testSaveLocationExists()Z
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "sDCardStatus":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 94
    .local v1, "status":Z
    :goto_0
    return v1

    .line 92
    .end local v1    # "status":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "status":Z
    goto :goto_0
.end method
