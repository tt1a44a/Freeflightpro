.class public Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;
.super Ljava/lang/Object;
.source "AirTrafficUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader$UploadFileStatusResponse;,
        Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader$GetStatusResponse;,
        Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader$ResponseCode;,
        Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader$FileType;
    }
.end annotation


# static fields
.field private static final BAD_REQUEST:I = 0x190

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CREATED:I = 0xc9

.field private static final DIGEST_MD5:Ljava/lang/String; = "MD5"

.field private static final FILE_ALREADY_UPLOADED:I = 0x0

.field private static final FILE_NOT_UPLOADED:I = 0x2

.field private static final FILE_PARTIALLY_UPLOADED:I = 0x1

.field public static final FILE_PART_UPLOADED:I = 0x1

.field public static final FILE_UPLOADED:I = 0x0

.field private static final FORBIDDEN_CREATED:I = 0x193

.field private static final GET_ERROR:I = 0x3

.field private static final HEADER_FIELD_RANGE:Ljava/lang/String; = "Range"

.field private static final HEADER_SESSION_ID:Ljava/lang/String; = "Session-Id"

.field private static final HEADER_VALUE_ANDROID:Ljava/lang/String; = "Android "

.field private static final HEADER_VALUE_APP_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final HEADER_VALUE_ATTACHEMENT:Ljava/lang/String; = "attachment"

.field private static final HEADER_VALUE_BBOX:Ljava/lang/String; = "bbox"

.field private static final HEADER_VALUE_BYTES:Ljava/lang/String; = "bytes"

.field private static final HEADER_VALUE_FILENAME:Ljava/lang/String; = "filename"

.field private static final HEADER_VALUE_PUD:Ljava/lang/String; = "pud"

.field private static final HEADER_X_PARROT_APP_NAME:Ljava/lang/String; = "X-Parrot-App-Name"

.field private static final HEADER_X_PARROT_APP_VERSION:Ljava/lang/String; = "X-Parrot-App-Version"

.field private static final HEADER_X_PARROT_DEVICE_MODEL:Ljava/lang/String; = "X-Parrot-Device-Model"

.field private static final HEADER_X_PARROT_DEVICE_OS:Ljava/lang/String; = "X-Parrot-Device-Os"

.field private static final HEADER_X_PARROT_FILE_TYPE:Ljava/lang/String; = "X-Parrot-File-Type"

.field private static final HEXADECIMAL_BASE:I = 0x10

.field private static final NOT_ACCEPTABLE:I = 0x196

.field private static final OK:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AirTrafficUploader"

.field public static final TYPE_BBOX:I = 0x0

.field public static final TYPE_PUD:I = 0x1

.field private static final UPLOAD_CONNECTION_TIMEOUT_MS:I = 0xfa0

.field public static final UPLOAD_ERROR:I = 0x2

.field public static final UPLOAD_ERROR_DISMISS:I = 0x3

.field private static final UPLOAD_READ_TIMEOUT_MS:I = 0x7d0

.field private static final UPLOAD_URL:Ljava/lang/String; = "https://bbox.parrot.com/"


# instance fields
.field private final mFileLength:J

.field private final mFileToUpload:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFileType:I

.field private mStartByteIndex:I

.field private final mUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 2
    .param p1, "fileToUpload"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fileType"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileToUpload:Ljava/io/File;

    .line 115
    iput-object p2, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mUuid:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileLength:J

    .line 117
    iput p3, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileType:I

    .line 118
    return-void
.end method

.method private getFileStatus()I
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 256
    const/4 v6, 0x3

    .line 257
    .local v6, "statusResponse":I
    const/4 v1, 0x0

    .line 259
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "https://bbox.parrot.com/"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 260
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 261
    const/16 v8, 0xfa0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 262
    const/16 v8, 0x7d0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 263
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->setCommonRequestProperties(Ljava/net/HttpURLConnection;)V

    .line 265
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 267
    .local v4, "responseCode":I
    sparse-switch v4, :sswitch_data_0

    .line 291
    :goto_0
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    .end local v4    # "responseCode":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return v6

    .line 269
    .restart local v4    # "responseCode":I
    .restart local v7    # "url":Ljava/net/URL;
    :sswitch_0
    :try_start_1
    const-string v8, "Range"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "range":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 271
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v8, v8, v10

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aget-object v5, v8, v10

    .line 272
    .local v5, "startRange":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I

    .line 273
    iget v8, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I

    if-gtz v8, :cond_1

    const/4 v6, 0x2

    .line 274
    :goto_2
    goto :goto_0

    :cond_1
    move v6, v9

    .line 273
    goto :goto_2

    .line 275
    .end local v5    # "startRange":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v6, 0x2

    .line 278
    goto :goto_0

    .line 280
    .end local v3    # "range":Ljava/lang/String;
    :sswitch_1
    const/4 v6, 0x0

    .line 281
    goto :goto_0

    .line 288
    .end local v4    # "responseCode":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 291
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v8

    .line 288
    :catch_1
    move-exception v8

    move-object v2, v8

    goto :goto_3

    :catch_2
    move-exception v8

    move-object v2, v8

    goto :goto_3

    :catch_3
    move-exception v8

    move-object v2, v8

    goto :goto_3

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method private getFileTypeString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 326
    const-string v0, ""

    .line 327
    .local v0, "fileType":Ljava/lang/String;
    iget v1, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileType:I

    packed-switch v1, :pswitch_data_0

    .line 335
    :goto_0
    return-object v0

    .line 329
    :pswitch_0
    const-string v0, "bbox"

    .line 330
    goto :goto_0

    .line 332
    :pswitch_1
    const-string/jumbo v0, "pud"

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMD5FromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 310
    const/4 v1, 0x0

    .line 312
    .local v1, "md5":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 313
    .local v2, "md5Enc":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 314
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    .end local v2    # "md5Enc":Ljava/security/MessageDigest;
    :goto_0
    if-eqz v1, :cond_0

    .line 319
    const-string v3, "%32s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_0
    return-object v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMd5FromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p1, "updateFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, "inputStream":Ljava/io/InputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 344
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 347
    .local v5, "output":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 348
    .local v4, "md5Enc":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    if-lez v6, :cond_2

    .line 350
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 353
    .end local v6    # "read":I
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "md5Enc":Ljava/security/MessageDigest;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_1
    move-object v1, v7

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v2, :cond_0

    .line 358
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    .line 365
    const-string v7, "%32s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 367
    :cond_1
    return-object v5

    .line 352
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "md5Enc":Ljava/security/MessageDigest;
    .restart local v6    # "read":I
    :cond_2
    :try_start_4
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 356
    if-eqz v3, :cond_4

    .line 358
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 361
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 359
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 361
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 359
    .end local v4    # "md5Enc":Ljava/security/MessageDigest;
    .end local v6    # "read":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    .line 358
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 361
    :cond_3
    :goto_5
    throw v7

    .line 359
    :catch_3
    move-exception v1

    .line 360
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    :goto_6
    move-object v1, v7

    goto :goto_2

    .line 356
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "md5Enc":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 353
    .end local v4    # "md5Enc":Ljava/security/MessageDigest;
    :catch_5
    move-exception v7

    goto :goto_1

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "md5Enc":Ljava/security/MessageDigest;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "read":I
    :cond_4
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private getNextFilePart(Ljava/io/BufferedInputStream;[BI)I
    .locals 4
    .param p1, "bufferedInputStream"    # Ljava/io/BufferedInputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filePart"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "filePartSize"    # I

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    .line 373
    .local v0, "availableBytes":I
    if-ge v0, p3, :cond_0

    move v2, v0

    .line 374
    .local v2, "length":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 378
    .end local v0    # "availableBytes":I
    .end local v2    # "length":I
    :goto_1
    return v3

    .restart local v0    # "availableBytes":I
    :cond_0
    move v2, p3

    .line 373
    goto :goto_0

    .line 375
    .end local v0    # "availableBytes":I
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private setCommonRequestProperties(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    const-string v0, "Session-Id"

    iget-object v1, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "X-Parrot-File-Type"

    invoke-direct {p0}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->getFileTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "X-Parrot-Device-Model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "X-Parrot-Device-Os"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "X-Parrot-App-Name"

    const-string v1, "com.parrot.freeflight3"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "X-Parrot-App-Version"

    const-string v1, "5.2.7"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private uploadFileMultiPart()I
    .locals 10

    .prologue
    .line 143
    const/4 v7, 0x2

    .line 144
    .local v7, "statusResponse":I
    iget-object v8, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileToUpload:Ljava/io/File;

    invoke-direct {p0, v8}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->getMd5FromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "fileMd5":Ljava/lang/String;
    const/4 v0, 0x0

    .line 146
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    if-eqz v3, :cond_1

    .line 148
    const/4 v6, 0x0

    .line 149
    .local v6, "index":I
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileToUpload:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    iget v8, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 151
    const/16 v8, 0x1000

    new-array v4, v8, [B

    .line 153
    .local v4, "filePart":[B
    :cond_0
    array-length v8, v4

    invoke-direct {p0, v1, v4, v8}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->getNextFilePart(Ljava/io/BufferedInputStream;[BI)I

    move-result v5

    .line 154
    .local v5, "filePartLength":I
    if-ltz v5, :cond_2

    .line 155
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->uploadFilePart(Ljava/lang/String;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 160
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 165
    if-eqz v1, :cond_4

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 173
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "filePart":[B
    .end local v5    # "filePartLength":I
    .end local v6    # "index":I
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_1
    return v7

    .line 158
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "filePart":[B
    .restart local v5    # "filePartLength":I
    .restart local v6    # "index":I
    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 169
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 162
    .end local v4    # "filePart":[B
    .end local v5    # "filePartLength":I
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    if-eqz v0, :cond_1

    .line 167
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 168
    :catch_2
    move-exception v8

    goto :goto_1

    .line 165
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_3

    .line 167
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 169
    :cond_3
    :goto_4
    throw v8

    .line 168
    :catch_3
    move-exception v9

    goto :goto_4

    .line 165
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 162
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "filePart":[B
    .restart local v5    # "filePartLength":I
    :cond_4
    move-object v0, v1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private uploadFilePart(Ljava/lang/String;[BII)I
    .locals 16
    .param p1, "fileMd5"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filePart"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "filePartLength"    # I
    .param p4, "index"    # I

    .prologue
    .line 190
    const/4 v7, 0x2

    .line 191
    .local v7, "statusResponse":I
    const/4 v2, 0x0

    .line 192
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 194
    .local v4, "outputStream":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v9, "https://bbox.parrot.com/"

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 196
    const/16 v9, 0xfa0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 197
    const/16 v9, 0x7d0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 198
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 199
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 200
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->setCommonRequestProperties(Ljava/net/HttpURLConnection;)V

    .line 202
    const-string v9, "Content-Type"

    const-string v10, "application/octet-stream"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v9, "Content-MD5"

    move-object/from16 v0, p1

    invoke-virtual {v2, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v9, "Content-Disposition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "attachment; filename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v9, "Content-Length"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v9, "Content-Range"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "bytes=%d-%d/%d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I

    move/from16 v0, p4

    mul-int/lit16 v15, v0, 0x1000

    add-int/2addr v14, v15

    .line 207
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move/from16 v0, p4

    mul-int/lit16 v14, v0, 0x1000

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mStartByteIndex:I

    add-int/2addr v14, v15

    add-int v14, v14, p3

    add-int/lit8 v14, v14, -0x1

    .line 208
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileLength:J

    .line 209
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 206
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v4    # "outputStream":Ljava/io/DataOutputStream;
    .local v5, "outputStream":Ljava/io/DataOutputStream;
    const/4 v9, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v9, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 213
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    const/4 v4, 0x0

    .line 216
    .end local v5    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "outputStream":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 217
    .local v6, "responseCode":I
    sparse-switch v6, :sswitch_data_0

    .line 235
    :goto_0
    if-eqz v4, :cond_0

    .line 237
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 241
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    .end local v6    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    return v7

    .line 220
    .restart local v6    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :sswitch_0
    const/4 v7, 0x0

    .line 221
    goto :goto_0

    .line 223
    :sswitch_1
    const/4 v7, 0x1

    .line 224
    goto :goto_0

    .line 226
    :sswitch_2
    const/4 v7, 0x3

    .line 227
    goto :goto_0

    .line 232
    .end local v6    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    if-eqz v4, :cond_2

    .line 237
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 241
    :cond_2
    :goto_4
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_3

    .line 237
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 241
    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    .line 242
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v9

    .line 238
    .restart local v6    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v6    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_6

    .line 235
    .end local v4    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "outputStream":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 232
    .end local v4    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "outputStream":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "outputStream":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x193 -> :sswitch_0
        0x196 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public uploadFile()I
    .locals 4

    .prologue
    .line 122
    const/4 v0, 0x2

    .line 123
    .local v0, "statusResponse":I
    iget-object v1, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->getFileStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    const-string v1, "AirTrafficUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mFileToUpload:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UUID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return v0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    .line 127
    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->uploadFileMultiPart()I

    move-result v0

    .line 131
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
