.class public Lcom/parrot/freeflight/core/academy/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 180
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object v2

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 188
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunDetails(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 206
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fileToRunSummary(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 194
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    :catch_1
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
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v3, "data":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 126
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_0
    new-array v2, v6, [C

    .line 127
    .local v2, "buffer":[C
    const/4 v5, 0x0

    .line 128
    .local v5, "readLen":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 130
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 133
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

    .line 135
    if-eqz v0, :cond_0

    .line 137
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/StringBuilder;
    :goto_3
    return-object v6

    .line 135
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v3    # "data":Ljava/lang/StringBuilder;
    .restart local v5    # "readLen":I
    :cond_1
    if-eqz v1, :cond_4

    .line 137
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 140
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 138
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 140
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 138
    .end local v2    # "buffer":[C
    .end local v5    # "readLen":I
    :catch_2
    move-exception v4

    .line 139
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_2

    .line 137
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :cond_2
    :goto_5
    throw v6

    .line 138
    :catch_3
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 145
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

    .line 147
    const/4 v6, 0x0

    goto :goto_3

    .line 135
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

    .line 132
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

.method public static findCharIndex(Ljava/io/File;C)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "character"    # C

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, "index":I
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 157
    .local v2, "c":I
    :goto_0
    if-eq v2, p1, :cond_0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    goto :goto_0

    .line 164
    :cond_0
    if-eqz v1, :cond_4

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 175
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "c":I
    :cond_1
    :goto_1
    return v4

    .line 167
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "c":I
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 169
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 161
    .end local v2    # "c":I
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 162
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v0, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 167
    :catch_2
    move-exception v3

    .line 168
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_2

    .line 166
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 169
    :cond_2
    :goto_4
    throw v5

    .line 167
    :catch_3
    move-exception v3

    .line 168
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 173
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "c":I
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
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
    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v2    # "output":Ljava/io/OutputStream;
    .local v3, "output":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 72
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 76
    .end local v0    # "buffer":[B
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 77
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_0

    .line 81
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 75
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

    .line 79
    if-eqz v3, :cond_3

    .line 81
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 84
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 82
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 84
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 82
    .end local v0    # "buffer":[B
    .end local v4    # "read":I
    :catch_2
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 81
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 84
    :cond_2
    :goto_4
    throw v5

    .line 82
    :catch_3
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    goto :goto_3

    .line 76
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

    .line 32
    const/4 v6, 0x0

    .line 35
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    const/4 v9, 0x2

    :try_start_1
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "data":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [C

    .line 38
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 39
    .local v5, "writeLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    .local v2, "dataLen":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 41
    add-int/lit16 v9, v5, 0x400

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v9, v5

    .line 42
    .local v4, "len":I
    :goto_1
    add-int v9, v5, v4

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 43
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v4}, Ljava/io/FileWriter;->write([CII)V

    .line 44
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    add-int/lit16 v5, v5, 0x400

    .line 46
    goto :goto_0

    .end local v4    # "len":I
    :cond_0
    move v4, v8

    .line 41
    goto :goto_1

    .line 50
    :cond_1
    if-eqz v7, :cond_4

    .line 52
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 58
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v5    # "writeLen":I
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 53
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "dataLen":I
    .restart local v5    # "writeLen":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 55
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 47
    .end local v0    # "buffer":[C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dataLen":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "writeLen":I
    :catch_1
    move-exception v8

    :goto_3
    move-object v3, v8

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    if-eqz v6, :cond_2

    .line 52
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 53
    :catch_2
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_3

    .line 52
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    :cond_3
    :goto_6
    throw v8

    .line 53
    :catch_3
    move-exception v3

    .line 54
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 47
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    :goto_7
    move-object v3, v8

    goto :goto_4

    .line 50
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 47
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

.method public static readFileWithOffset(Ljava/io/File;II)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 94
    .local v5, "size":I
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 95
    if-ge p1, p2, :cond_2

    .line 96
    sub-int v4, p2, p1

    .line 97
    .local v4, "resultSize":I
    new-array v2, v4, [B

    .line 98
    .local v2, "bytes":[B
    const/4 v0, 0x0

    .line 100
    .local v0, "buf":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v0    # "buf":Ljava/io/BufferedInputStream;
    .local v1, "buf":Ljava/io/BufferedInputStream;
    int-to-long v6, p1

    :try_start_1
    invoke-virtual {v1, v6, v7}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 102
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-eqz v1, :cond_3

    .line 108
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 117
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "resultSize":I
    .end local v5    # "size":I
    :cond_0
    :goto_0
    return-object v2

    .line 109
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytes":[B
    .restart local v4    # "resultSize":I
    .restart local v5    # "size":I
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 111
    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v0    # "buf":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 103
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 104
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    if-eqz v0, :cond_0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 109
    :catch_2
    move-exception v3

    .line 110
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v0, :cond_1

    .line 108
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 111
    :cond_1
    :goto_3
    throw v6

    .line 109
    :catch_3
    move-exception v3

    .line 110
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v0    # "buf":Ljava/io/BufferedInputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "resultSize":I
    .end local v5    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytes":[B
    .restart local v4    # "resultSize":I
    .restart local v5    # "size":I
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v0    # "buf":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 103
    .end local v0    # "buf":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v0    # "buf":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0    # "buf":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf":Ljava/io/BufferedInputStream;
    :cond_3
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedInputStream;
    .restart local v0    # "buf":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method
