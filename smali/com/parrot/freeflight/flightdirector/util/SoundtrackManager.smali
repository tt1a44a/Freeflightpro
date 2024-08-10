.class public Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
.super Ljava/lang/Object;
.source "SoundtrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;,
        Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;,
        Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    }
.end annotation


# static fields
.field private static final ALL_SOUNDTRACK_UUID:Ljava/lang/String; = "AllSoundtrackUUID"

.field private static final AUDIO_FORMAT_SUFFIX:Ljava/lang/String; = ".mp3"

.field private static final DEFAULT_MUSICS:[I

.field private static final PREF_KEY_CUSTOM_MUSIC:Ljava/lang/String; = "PREF_KEY_CUSTOM_MUSIC"

.field private static final REQUEST_SOUNDTRACK:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCustomSoundtracks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadSoundtrackTasks:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicItems:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100005
        0x7f100019
        0x7f10001d
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$1;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$1;-><init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mContext:Landroid/content/Context;

    .line 129
    const-string v0, "PREF_KEY_CUSTOM_MUSIC"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mMusicItems:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mDownloadSoundtrackTasks:Ljava/util/Map;

    .line 133
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->init(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mMusicItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mDownloadSoundtrackTasks:Ljava/util/Map;

    return-object v0
.end method

.method private static copyResToFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 97
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 99
    .local v0, "buff":[B
    const/4 v5, 0x0

    .line 101
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getMusicDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mp3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v3, "fullPath":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_1

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 109
    .end local v7    # "read":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 110
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 113
    .end local v3    # "fullPath":Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v3

    .line 113
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "fullPath":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    if-eqz v6, :cond_2

    .line 115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_3
    move-object v5, v6

    .line 120
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 112
    .end local v7    # "read":I
    :catchall_0
    move-exception v8

    .line 113
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    if-eqz v5, :cond_3

    .line 115
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 118
    :cond_3
    :goto_5
    throw v8

    .line 117
    :catch_1
    move-exception v9

    goto :goto_5

    .line 112
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 117
    .end local v3    # "fullPath":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fullPath":Ljava/io/File;
    :catch_3
    move-exception v1

    goto :goto_1

    .line 117
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    :catch_4
    move-exception v8

    goto :goto_3
.end method

.method public static getFullMusicPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "musicOriginName"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "testFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    .end local p0    # "musicOriginName":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "musicOriginName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getMusicDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMusicDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "parrot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private insertAudioFiles(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v2, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 153
    .local v0, "res":I
    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->copyResToFile(Landroid/content/Context;I)Ljava/io/File;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "res":I
    :cond_0
    return-void
.end method

.method private isAudioFilesExists(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "parrot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, "parrotDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_6

    .line 161
    sget-object v6, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    array-length v6, v6

    if-lez v6, :cond_4

    .line 163
    sget-object v8, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    array-length v9, v8

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget v5, v8, v7

    .line 164
    .local v5, "resId":I
    const/4 v0, 0x0

    .line 165
    .local v0, "exists":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ".mp3"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "fullName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_0

    aget-object v2, v10, v6

    .line 168
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 169
    const/4 v0, 0x1

    .line 173
    .end local v2    # "filename":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_2

    const/4 v6, 0x0

    .line 186
    .end local v0    # "exists":Z
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "fullName":Ljava/lang/String;
    .end local v5    # "resId":I
    :goto_2
    return v6

    .line 167
    .restart local v0    # "exists":Z
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "fullName":Ljava/lang/String;
    .restart local v5    # "resId":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 175
    .end local v0    # "exists":Z
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "fullName":Ljava/lang/String;
    .end local v5    # "resId":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_6

    aget-object v2, v7, v6

    .line 179
    .restart local v2    # "filename":Ljava/lang/String;
    const-string v9, ".mp3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 180
    const/4 v6, 0x1

    goto :goto_2

    .line 178
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 186
    .end local v2    # "filename":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private loadCustomMusicList()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "PREF_KEY_CUSTOM_MUSIC"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 289
    .local v0, "data":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mCustomSoundtracks:Ljava/util/Set;

    .line 290
    return-void
.end method

.method private parseMusicPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "musicPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "fileName":Ljava/lang/String;
    move-object v0, v1

    .line 259
    .local v0, "audioName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 260
    .local v2, "iExt":I
    if-ltz v2, :cond_0

    .line 261
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static randomSoundtrack(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v1, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 79
    .local v0, "randomIndex":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getFullMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private saveCustomMusicList()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PREF_KEY_CUSTOM_MUSIC"

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mCustomSoundtracks:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    return-void
.end method

.method private unpackDefaultAudio(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "parrot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "parrotDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->isAudioFilesExists(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->insertAudioFiles(Landroid/content/Context;)V

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public addCustomMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mCustomSoundtracks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->saveCustomMusicList()V

    .line 274
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->unpackDefaultAudio(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->loadCustomMusicList()V

    .line 139
    return-void
.end method

.method public removeCustomMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mCustomSoundtracks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 278
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->saveCustomMusicList()V

    .line 279
    return-void
.end method

.method public requestSoundtracks(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V
    .locals 20
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->loadCustomMusicList()V

    .line 197
    new-instance v4, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V

    .line 199
    .local v4, "holder":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;
    const-string v12, "AllSoundtrackUUID"

    .line 202
    .local v12, "runUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mMusicItems:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mMusicItems:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v4, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    :goto_0
    return-void

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mDownloadSoundtrackTasks:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mDownloadSoundtrackTasks:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->addListener(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V

    goto :goto_0

    .line 215
    :cond_1
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 217
    .local v9, "musics":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/parrot/freeflight/flightdirector/data/MusicItem;>;"
    sget-object v15, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->DEFAULT_MUSICS:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget v11, v15, v14

    .line 218
    .local v11, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, "originName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "fieldName":Ljava/lang/String;
    const-string v17, "_"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "musicName":Ljava/lang/String;
    new-instance v5, Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-direct {v5}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;-><init>()V

    .line 223
    .local v5, "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setName(Ljava/lang/String;)V

    .line 224
    invoke-static {v10}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getFullMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setAbsolutePath(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v9, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 230
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v5    # "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    .end local v7    # "musicName":Ljava/lang/String;
    .end local v10    # "originName":Ljava/lang/String;
    .end local v11    # "resId":I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mCustomSoundtracks:Ljava/util/Set;

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v2, "customSoundtracks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 232
    .local v8, "musicPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v6, "musicFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->parseMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .restart local v7    # "musicName":Ljava/lang/String;
    new-instance v5, Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-direct {v5}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;-><init>()V

    .line 236
    .restart local v5    # "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v5, v8}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setAbsolutePath(Ljava/lang/String;)V

    .line 239
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 241
    .end local v5    # "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    .end local v7    # "musicName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->removeCustomMusic(Ljava/lang/String;)V

    goto :goto_2

    .line 245
    .end local v6    # "musicFile":Ljava/io/File;
    .end local v8    # "musicPath":Ljava/lang/String;
    :cond_4
    new-instance v13, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v12, v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;-><init>(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;Ljava/lang/String;Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V

    .line 246
    .local v13, "task":Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mDownloadSoundtrackTasks:Ljava/util/Map;

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/util/List;

    const/16 v16, 0x0

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$DownloadSoundtrackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public resetSoundtracks()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->mMusicItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method
