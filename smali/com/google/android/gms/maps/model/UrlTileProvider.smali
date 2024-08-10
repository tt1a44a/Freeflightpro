.class public abstract Lcom/google/android/gms/maps/model/UrlTileProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->width:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->height:I

    .line 4
    return-void
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 8

    .prologue
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/maps/model/UrlTileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    .line 21
    :goto_0
    return-object v0

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/Tile;

    iget v2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->width:I

    iget v3, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->height:I

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 9
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 12
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 13
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 14
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 17
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method
