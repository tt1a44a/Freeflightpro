.class public Lcom/parrot/freeflight/util/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/parrot/freeflight/util/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 47
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 49
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 50
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 56
    return-wide v2

    .line 53
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 55
    goto :goto_0
.end method

.method static createBuffer()[B
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 32
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
