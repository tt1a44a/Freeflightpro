.class public Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;
.super Ljava/lang/Object;
.source "EphemerisDownloader.java"


# static fields
.field private static final BACKUP_SERVER_REQUEST_TIMEOUT:I = 0xea60

.field private static final BACKUP_SERVER_URL:Ljava/lang/String; = "https://offline-live2.services.u-blox.com/GetOfflineData.ashx?token=oVx4Rd6fVUeYzHfSWtSapA;gnss=gps,glo;period=1;resolution=1"

.field private static final BYTE_BUFFER_SIZE:I = 0x800

.field private static final MAIN_SERVER_REQUEST_TIMEOUT:I = 0x2710

.field private static final MAIN_SERVER_URL:Ljava/lang/String; = "https://offline-live1.services.u-blox.com/GetOfflineData.ashx?token=oVx4Rd6fVUeYzHfSWtSapA;gnss=gps,glo;period=1;resolution=1"


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mEphemerisFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEphemerisFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEphemerisMD5FilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dstFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dstFileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dstMd5FileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFolder:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFilePath:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisMD5FilePath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private computeEphemerisMd5()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 170
    .local v1, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALMd5;

    invoke-direct {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5;-><init>()V

    .line 171
    .local v4, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5;
    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFilePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/parrot/arsdk/arsal/ARSALMd5;->compute(Ljava/lang/String;)[B

    move-result-object v2

    .line 173
    .local v2, "md5":[B
    if-eqz v2, :cond_2

    .line 174
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v4, v2, v7, v8}, Lcom/parrot/arsdk/arsal/ARSALMd5;->getTextDigest([BII)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "md5Digest":Ljava/lang/String;
    const/4 v5, 0x0

    .line 177
    .local v5, "md5Writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisMD5FilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v5    # "md5Writer":Ljava/io/FileWriter;
    .local v6, "md5Writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    if-eqz v6, :cond_3

    .line 189
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 198
    .end local v3    # "md5Digest":Ljava/lang/String;
    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-object v1

    .line 190
    .restart local v3    # "md5Digest":Ljava/lang/String;
    .restart local v6    # "md5Writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 192
    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    .restart local v5    # "md5Writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 182
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_DOWNLOADER_CANNOT_OPEN_FILE:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    if-eqz v5, :cond_0

    .line 189
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 190
    :catch_2
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARSAL_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    if-eqz v5, :cond_0

    .line 189
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 190
    :catch_4
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_1

    .line 189
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 192
    :cond_1
    :goto_4
    throw v7

    .line 190
    :catch_5
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "md5Digest":Ljava/lang/String;
    .end local v5    # "md5Writer":Ljava/io/FileWriter;
    :cond_2
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARSAL_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    goto :goto_0

    .line 187
    .restart local v3    # "md5Digest":Ljava/lang/String;
    .restart local v6    # "md5Writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    .restart local v5    # "md5Writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 183
    .end local v5    # "md5Writer":Ljava/io/FileWriter;
    .restart local v6    # "md5Writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    .restart local v5    # "md5Writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 180
    .end local v5    # "md5Writer":Ljava/io/FileWriter;
    .restart local v6    # "md5Writer":Ljava/io/FileWriter;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    .restart local v5    # "md5Writer":Ljava/io/FileWriter;
    goto :goto_1

    .end local v5    # "md5Writer":Ljava/io/FileWriter;
    .restart local v6    # "md5Writer":Ljava/io/FileWriter;
    :cond_3
    move-object v5, v6

    .end local v6    # "md5Writer":Ljava/io/FileWriter;
    .restart local v5    # "md5Writer":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method private downloadEphemerisFile()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    sget-object v3, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 123
    .local v3, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v5, 0x0

    .line 124
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 127
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 129
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 132
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_2

    .line 133
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 136
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 137
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    sget-object v3, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_DOWNLOADER_CANNOT_OPEN_FILE:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 138
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v5, :cond_0

    .line 145
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 152
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 157
    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    :goto_4
    return-object v3

    .line 135
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    if-eqz v6, :cond_3

    .line 145
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 150
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 152
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 157
    :cond_4
    :goto_6
    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    .line 158
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 146
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 146
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    sget-object v3, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_SERVER_RECEIVE_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 141
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    if-eqz v5, :cond_5

    .line 145
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 150
    :cond_5
    :goto_8
    if-eqz v4, :cond_6

    .line 152
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 157
    :cond_6
    :goto_9
    iget-object v7, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 146
    :catch_6
    move-exception v2

    .line 147
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 153
    :catch_7
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v5, :cond_7

    .line 145
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 150
    :cond_7
    :goto_b
    if-eqz v4, :cond_8

    .line 152
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 157
    :cond_8
    :goto_c
    iget-object v8, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v7

    .line 146
    :catch_8
    move-exception v2

    .line 147
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 139
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 136
    :catch_b
    move-exception v2

    goto :goto_1
.end method

.method private openConnection(Ljava/lang/String;I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 4
    .param p1, "serverUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeout"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 102
    iget-object v2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    iget-object v2, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 105
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 108
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_SERVER_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    goto :goto_0
.end method

.method private prepareDownload()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->mEphemerisFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 87
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    goto :goto_0
.end method


# virtual methods
.method public downloadEphemerisSync()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->prepareDownload()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 55
    .local v0, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-eq v0, v2, :cond_0

    move-object v1, v0

    .line 70
    .end local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .local v1, "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :goto_0
    return-object v1

    .line 58
    .end local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :cond_0
    const-string v2, "https://offline-live1.services.u-blox.com/GetOfflineData.ashx?token=oVx4Rd6fVUeYzHfSWtSapA;gnss=gps,glo;period=1;resolution=1"

    const/16 v3, 0x2710

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->openConnection(Ljava/lang/String;I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 59
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-eq v0, v2, :cond_1

    .line 60
    const-string v2, "https://offline-live2.services.u-blox.com/GetOfflineData.ashx?token=oVx4Rd6fVUeYzHfSWtSapA;gnss=gps,glo;period=1;resolution=1"

    const v3, 0xea60

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->openConnection(Ljava/lang/String;I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-eq v0, v2, :cond_1

    move-object v1, v0

    .line 62
    .end local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    goto :goto_0

    .line 65
    .end local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->downloadEphemerisFile()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 66
    sget-object v2, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    if-eq v0, v2, :cond_2

    move-object v1, v0

    .line 67
    .end local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    goto :goto_0

    .line 69
    .end local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisDownloader;->computeEphemerisMd5()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    move-object v1, v0

    .line 70
    .end local v0    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v1    # "error":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    goto :goto_0
.end method
