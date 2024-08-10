.class public Lcom/parrot/freeflight/core/academy/utils/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 13
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 15
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 17
    .local v0, "compressed":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 18
    return-object v0
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 8
    .param p0, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    .line 22
    const/16 v0, 0x20

    .line 23
    .local v0, "BUFFER_SIZE":I
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 24
    .local v4, "is":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 25
    .local v3, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v5, "string":Ljava/lang/StringBuilder;
    new-array v2, v6, [B

    .line 28
    .local v2, "data":[B
    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 29
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 32
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
