.class public Lcom/phonegap/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 41
    .local v2, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 43
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v5, v1

    .line 45
    .end local v2    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v5

    .line 44
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private writeToDisk(Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 9
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sdcard/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "FilePath":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 57
    .local v4, "in":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 58
    .local v1, "buff":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 62
    .local v5, "numread":I
    if-gtz v5, :cond_0

    .line 67
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 68
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 70
    .end local v1    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "numread":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 64
    .restart local v1    # "buff":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "numread":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_0

    .line 69
    .end local v1    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "numread":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/phonegap/HttpHandler;->getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 25
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-direct {p0, v1, p2}, Lcom/phonegap/HttpHandler;->writeToDisk(Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    .line 26
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method
