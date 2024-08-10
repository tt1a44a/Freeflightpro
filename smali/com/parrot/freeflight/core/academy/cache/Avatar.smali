.class public Lcom/parrot/freeflight/core/academy/cache/Avatar;
.super Ljava/lang/Object;
.source "Avatar.java"


# static fields
.field private static final ACADEMY_AVATAR_CACHE_FILE:Ljava/lang/String; = "avatar.jpg"

.field private static final TAG:Ljava/lang/String; = "Avatar"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    const-class v2, Lcom/parrot/freeflight/core/academy/cache/Avatar;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "avatar.jpg"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-string v1, "Avatar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache, failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit v2

    return-void

    .line 127
    .end local v0    # "cacheFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static downloadAvatarInCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "avatar.jpg"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v0, "cacheFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 50
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 51
    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 53
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 58
    :catch_2
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    :cond_1
    :goto_1
    throw v3

    .line 58
    :catch_3
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getAvatar(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheAllowed"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    const-class v2, Lcom/parrot/freeflight/core/academy/cache/Avatar;

    monitor-enter v2

    if-eqz p2, :cond_1

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->getAvatarFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "avatar":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    invoke-static {p0, p1}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->downloadAvatarInCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->getAvatarFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 115
    .end local v0    # "avatar":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->getAvatarFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "avatar":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 101
    .end local v0    # "avatar":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getAvatarFromCache(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "avatar":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "avatar.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method private static getAvatarFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    if-eqz v2, :cond_0

    .line 82
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 78
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz v2, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    :cond_1
    :goto_1
    throw v3

    .line 83
    :catch_3
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
