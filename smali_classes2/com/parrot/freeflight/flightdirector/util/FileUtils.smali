.class public Lcom/parrot/freeflight/flightdirector/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGetContentIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    return-object v0
.end method

.method public static fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 309
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-object v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunDetails(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-object v2

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunSummary(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 322
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 323
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-object v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v3, "data":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 283
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_0
    new-array v2, v6, [C

    .line 284
    .local v2, "buffer":[C
    const/4 v5, 0x0

    .line 285
    .local v5, "readLen":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 287
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 290
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    if-eqz v0, :cond_0

    .line 294
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 300
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/StringBuilder;
    :goto_3
    return-object v6

    .line 292
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v3    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "readLen":I
    :cond_1
    if-eqz v1, :cond_4

    .line 294
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 297
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 295
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 296
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 297
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 295
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    :catch_2
    move-exception v4

    .line 296
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 292
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_2

    .line 294
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 297
    :cond_2
    :goto_5
    throw v6

    .line 295
    :catch_3
    move-exception v4

    .line 296
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 302
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/StringBuilder;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v6, 0x0

    goto :goto_3

    .line 292
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v3    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "readLen":I
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 289
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    :catch_4
    move-exception v4

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v5    # "readLen":I
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 92
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 97
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 104
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 107
    if-eqz v8, :cond_0

    .line 108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    if-eqz v8, :cond_2

    .line 108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 110
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 138
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 141
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 143
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 144
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 148
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 200
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 138
    goto :goto_0

    .line 155
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 157
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    .line 159
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 158
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 164
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 165
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 169
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 170
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 171
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 178
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 179
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 183
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 172
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 173
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 174
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 175
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 187
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 190
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 193
    :cond_8
    invoke-static {p0, p1, v8, v8}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 196
    :cond_9
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public static inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "output":Ljava/io/OutputStream;
    .local v3, "output":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 260
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 264
    .end local v0    # "buffer":[B
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 265
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    if-eqz v2, :cond_0

    .line 269
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 263
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    if-eqz v3, :cond_3

    .line 269
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 272
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 270
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 272
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 270
    .end local v0    # "buffer":[B
    .end local v4    # "read":I
    :catch_2
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 269
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 272
    :cond_2
    :goto_4
    throw v5

    .line 270
    :catch_3
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_3

    .line 264
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "read":I
    :cond_3
    move-object v2, v3

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static jsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x400

    .line 220
    const/4 v6, 0x0

    .line 223
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    const/4 v9, 0x2

    :try_start_1
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "data":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [C

    .line 226
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 227
    .local v5, "writeLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    .local v2, "dataLen":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 229
    add-int/lit16 v9, v5, 0x400

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v9, v5

    .line 230
    .local v4, "len":I
    :goto_1
    add-int v9, v5, v4

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 231
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v4}, Ljava/io/FileWriter;->write([CII)V

    .line 232
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    add-int/lit16 v5, v5, 0x400

    .line 234
    goto :goto_0

    .end local v4    # "len":I
    :cond_0
    move v4, v8

    .line 229
    goto :goto_1

    .line 238
    :cond_1
    if-eqz v7, :cond_4

    .line 240
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 246
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v5    # "writeLen":I
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 241
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dataLen":I
    .restart local v5    # "writeLen":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 243
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 235
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "writeLen":I
    :catch_1
    move-exception v8

    :goto_3
    move-object v3, v8

    .line 236
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    if-eqz v6, :cond_2

    .line 240
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 241
    :catch_2
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_3

    .line 240
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 243
    :cond_3
    :goto_6
    throw v8

    .line 241
    :catch_3
    move-exception v3

    .line 242
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    :goto_7
    move-object v3, v8

    goto :goto_4

    .line 238
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 235
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_7

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_3

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dataLen":I
    .restart local v5    # "writeLen":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_4
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method
