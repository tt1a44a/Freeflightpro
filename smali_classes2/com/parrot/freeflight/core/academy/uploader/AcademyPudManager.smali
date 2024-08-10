.class public Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;
.super Ljava/lang/Object;
.source "AcademyPudManager.java"


# static fields
.field private static final ACADEMY_UPLOADER_FOLDER:Ljava/lang/String; = "academy"

.field private static final CHUNK_SIZE:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private academyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

.field private credentials:Ljava/lang/String;

.field private mLocalDirectory:Ljava/lang/String;

.field private mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;)V
    .locals 3
    .param p1, "localDirectory"    # Ljava/lang/String;
    .param p2, "md5Manager"    # Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "academy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->mLocalDirectory:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->mLocalDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getAcademyAPI()Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->academyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    .line 64
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 65
    return-void
.end method

.method private computeOffsetHeader(JJJ)Ljava/lang/String;
    .locals 3
    .param p1, "startOffset"    # J
    .param p3, "endOffset"    # J
    .param p5, "totalSize"    # J

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildAcademyFile(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .locals 5
    .param p1, "productFileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "academyFileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, "jsonPudString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/uploader/PudParser;->parsePudFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "academyFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    sget-object v4, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .end local v0    # "academyFile":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v4

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;
    sget-object v4, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    goto :goto_0

    .line 90
    .end local v1    # "e":Lcom/parrot/freeflight/core/academy/uploader/InvalidPudFileException;
    .restart local v0    # "academyFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    sget-object v4, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_SYSTEM:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    goto :goto_0
.end method

.method public dispose()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 199
    .local v0, "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not disposed !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->dispose()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    .line 184
    .local v0, "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-eq v0, v1, :cond_0

    .line 185
    sget-object v1, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to dispose object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ... leaking memory !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void

    .line 188
    .end local v0    # "error":Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public gzipPud(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "gzipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/utils/GzipUtils;->compress(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    .local v0, "compress":[B
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 109
    return-void
.end method

.method public uploadPostRun(Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p1, "gzipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/parrot/arsdk/arsal/ARSALException;,
            Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
        }
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->mMd5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->compute(Ljava/lang/String;)[B

    move-result-object v14

    .line 122
    .local v14, "md5":[B
    new-instance v20, Ljava/lang/StringBuilder;

    array-length v3, v14

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v20, "sb":Ljava/lang/StringBuilder;
    array-length v0, v14

    move/from16 v22, v0

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v3, v0, :cond_0

    aget-byte v2, v14, v3

    .line 124
    .local v2, "b":B
    const-string v23, "%02x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "b":B
    :cond_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 129
    .local v15, "md5Hex":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v13, "gzipFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 131
    .local v8, "fileSize":J
    const-wide/16 v22, 0x1

    sub-long v10, v8, v22

    .line 134
    .local v10, "endFile":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->academyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v3, v15}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getRunUploadOffset(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v17

    .line 135
    .local v17, "offsetCall":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;>;"
    const-wide/16 v4, 0x0

    .line 136
    .local v4, "startOffset":J
    invoke-interface/range {v17 .. v17}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;->getOffset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    .line 137
    const-wide/16 v22, 0x1

    sub-long v6, v8, v22

    .line 140
    .local v6, "endOffset":J
    const-string v3, "md5"

    invoke-static {v3, v15}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object v16

    .line 141
    .local v16, "md5Part":Lokhttp3/MultipartBody$Part;
    const-string v3, "file"

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "application/gzip"

    invoke-static/range {v23 .. v23}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lokhttp3/MultipartBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v3, v0, v1}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v12

    .line 142
    .local v12, "filePart":Lokhttp3/MultipartBody$Part;
    const/16 v18, 0x0

    .line 143
    .local v18, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/google/gson/JsonElement;>;"
    :cond_1
    cmp-long v3, v4, v10

    if-gez v3, :cond_3

    .line 145
    const-wide/32 v22, 0x7fffffff

    add-long v6, v4, v22

    .line 146
    cmp-long v3, v6, v10

    if-lez v3, :cond_2

    .line 147
    move-wide v6, v10

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->academyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    move-object/from16 v22, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->computeOffsetHeader(JJJ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1, v12}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->uploadRun(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object v19

    .line 152
    .local v19, "result":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/google/gson/JsonElement;>;"
    invoke-interface/range {v19 .. v19}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v18

    .line 154
    const-wide/16 v22, 0x1

    add-long v4, v6, v22

    .line 156
    cmp-long v3, v4, v10

    if-gez v3, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/uploader/AcademyPudManager;->academyAPI:Lcom/parrot/freeflight/core/academy/client/AcademyAPI;

    invoke-interface {v3, v15}, Lcom/parrot/freeflight/core/academy/client/AcademyAPI;->getRunUploadOffset(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v17

    .line 159
    invoke-interface/range {v17 .. v17}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyOffset;->getOffset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 160
    .local v21, "serverOffset":I
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v3, v4, v22

    if-eqz v3, :cond_1

    .line 161
    new-instance v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    sget-object v22, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;-><init>(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 165
    .end local v19    # "result":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/google/gson/JsonElement;>;"
    .end local v21    # "serverOffset":I
    :cond_3
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 166
    invoke-virtual/range {v18 .. v18}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    :cond_4
    new-instance v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    sget-object v22, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_BAD_REQUEST:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;-><init>(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    throw v3
.end method
