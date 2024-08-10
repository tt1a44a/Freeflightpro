.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;

.field private static volatile isInitializing:Z


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/bumptech/glide/MemoryCategory;

.field private final registry:Lcom/bumptech/glide/Registry;

.field private final requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/request/RequestOptions;Ljava/util/Map;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "requestManagerRetriever"    # Lcom/bumptech/glide/manager/RequestManagerRetriever;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "connectivityMonitorFactory"    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "logLevel"    # I
    .param p9, "defaultRequestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/bumptech/glide/manager/RequestManagerRetriever;",
            "Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;",
            "I",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/TransitionOptions",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p10, "defaultTransitionOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/TransitionOptions<**>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    .line 117
    sget-object v3, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 323
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 324
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 325
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 326
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 327
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 328
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 330
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/RequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/bumptech/glide/load/DecodeFormat;

    .line 331
    .local v17, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    new-instance v3, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 335
    .local v26, "resources":Landroid/content/res/Resources;
    new-instance v3, Lcom/bumptech/glide/Registry;

    invoke-direct {v3}, Lcom/bumptech/glide/Registry;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 340
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;-><init>()V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 345
    new-instance v18, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v3}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v3

    .line 346
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 347
    .local v18, "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    new-instance v15, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 348
    invoke-virtual {v3}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v15, v0, v3, v1, v2}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 350
    .local v15, "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->parcel(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v20

    .line 351
    .local v20, "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 352
    .local v14, "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    new-instance v27, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 353
    .local v27, "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    new-instance v21, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v21, "resourceDrawableDecoder":Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;
    new-instance v24, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 357
    .local v24, "resourceLoaderStreamFactory":Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;
    new-instance v25, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct/range {v25 .. v26}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 359
    .local v25, "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    new-instance v23, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 361
    .local v23, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    new-instance v22, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 363
    .local v22, "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 365
    .local v13, "bitmapEncoder":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    new-instance v12, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v12}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    .line 366
    .local v12, "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    new-instance v19, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct/range {v19 .. v19}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    .line 368
    .local v19, "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 370
    .local v16, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v5}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    .line 371
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/model/StreamEncoder;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 372
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {v3, v4, v5, v6, v14}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    .line 375
    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 376
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 385
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->asset(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v8

    .line 381
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/Bitmap;

    .line 386
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;-><init>()V

    .line 387
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    .line 389
    invoke-virtual {v3, v4, v13}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "BitmapDrawable"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    move-object/from16 v0, v26

    invoke-direct {v8, v0, v14}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 391
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "BitmapDrawable"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 396
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "BitmapDrawable"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 401
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    move-object/from16 v0, p4

    invoke-direct {v5, v0, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 406
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Gif"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 412
    invoke-virtual {v9}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-direct {v8, v9, v15, v0}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 408
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Gif"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 413
    invoke-virtual {v3, v4, v5, v6, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 414
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 418
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    .line 417
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-string v4, "Bitmap"

    const-class v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 419
    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 425
    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 426
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 429
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/File;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 430
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/File;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 431
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/File;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    .line 432
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/File;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 433
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/io/File;

    const-class v5, Ljava/io/File;

    .line 435
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 437
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    .line 438
    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 439
    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    const-class v5, Ljava/io/InputStream;

    .line 443
    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 444
    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    const-class v5, Landroid/net/Uri;

    .line 448
    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 449
    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 453
    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    .line 457
    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 458
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 459
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 460
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 461
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    .line 462
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;-><init>()V

    .line 464
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 466
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 472
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 476
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 480
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 484
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 485
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 487
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, [B

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    .line 488
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, [B

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 489
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 490
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 491
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;-><init>()V

    .line 492
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    .line 494
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    const-class v5, [B

    .line 498
    invoke-virtual {v3, v4, v5, v12}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v5, [B

    new-instance v6, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v12, v1}, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 499
    invoke-virtual {v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const-class v5, [B

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v5, v0}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    .line 506
    new-instance v7, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v7}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    .line 507
    .local v7, "imageViewTargetFactory":Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
    new-instance v3, Lcom/bumptech/glide/GlideContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p2

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 517
    return-void
.end method

.method private static checkAndInitializeGlide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    sget-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 182
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;)V

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 184
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_1

    .line 164
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_0

    .line 166
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->checkAndInitializeGlide(Landroid/content/Context;)V

    .line 168
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 282
    .local v3, "result":Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_start_0
    const-string v4, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 284
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 285
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 303
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Glide"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-string v4, "Glide"

    const-string v5, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    .line 296
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    .line 298
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    .line 300
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 153
    .end local v1    # "result":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 150
    :cond_2
    const-string v3, "Glide"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    const-string v3, "Glide"

    const-string v4, "default disk cache dir is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    .line 153
    goto :goto_0
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 675
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 680
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 203
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit v1

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Lcom/bumptech/glide/Glide;)V
    .locals 2
    .param p0, "glide"    # Lcom/bumptech/glide/Glide;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    .line 198
    :cond_0
    sput-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v1

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initializeGlide(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    new-instance v0, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v0}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 222
    return-void
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x3

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 227
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/bumptech/glide/Glide;->getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 228
    .local v0, "annotationGeneratedModule":Lcom/bumptech/glide/GeneratedAppGlideModule;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 229
    .local v8, "manifestModules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 230
    :cond_0
    new-instance v10, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v10, v1}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v8

    .line 233
    :cond_1
    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 236
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v3

    .line 237
    .local v3, "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 238
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 239
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/module/GlideModule;

    .line 240
    .local v2, "current":Lcom/bumptech/glide/module/GlideModule;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 243
    const-string v10, "Glide"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 244
    const-string v10, "Glide"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 250
    .end local v2    # "current":Lcom/bumptech/glide/module/GlideModule;
    .end local v3    # "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :cond_4
    const-string v10, "Glide"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 251
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/module/GlideModule;

    .line 252
    .local v6, "glideModule":Lcom/bumptech/glide/module/GlideModule;
    const-string v11, "Glide"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discovered GlideModule from manifest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 257
    .end local v6    # "glideModule":Lcom/bumptech/glide/module/GlideModule;
    :cond_5
    if-eqz v0, :cond_6

    .line 258
    invoke-virtual {v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v4

    .line 259
    .local v4, "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :goto_2
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/GlideBuilder;->setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 260
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/module/GlideModule;

    .line 261
    .local v9, "module":Lcom/bumptech/glide/module/GlideModule;
    invoke-interface {v9, v1, p1}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_3

    .line 258
    .end local v4    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .end local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 263
    .restart local v4    # "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :cond_7
    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 266
    :cond_8
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/GlideBuilder;->build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    .line 267
    .local v5, "glide":Lcom/bumptech/glide/Glide;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/module/GlideModule;

    .line 268
    .restart local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    iget-object v11, v5, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-interface {v9, v1, v5, v11}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    .line 270
    .end local v9    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_9
    if-eqz v0, :cond_a

    .line 271
    iget-object v10, v5, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, v1, v5, v10}, Lcom/bumptech/glide/GeneratedAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 273
    :cond_a
    invoke-virtual {v1, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 274
    sput-object v5, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 275
    return-void
.end method

.method public static declared-synchronized tearDown()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 211
    const-class v1, Lcom/bumptech/glide/Glide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 215
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v0, v0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->shutdown()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit v1

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static throwIncorrectGlideModule(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 719
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 707
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 732
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 635
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    .line 636
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 605
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 606
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 607
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    .line 608
    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getGlideContext()Lcom/bumptech/glide/GlideContext;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 838
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 843
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 833
    return-void
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 592
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 593
    return-void
.end method

.method registerRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 813
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v1

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 817
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    return-void
.end method

.method removeFromManagers(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 801
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<*>;"
    iget-object v2, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v2

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestManager;

    .line 803
    .local v0, "requestManager":Lcom/bumptech/glide/RequestManager;
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    const/4 v1, 0x1

    monitor-exit v2

    .line 809
    .end local v0    # "requestManager":Lcom/bumptech/glide/RequestManager;
    :goto_0
    return v1

    .line 807
    :cond_1
    monitor-exit v2

    .line 809
    const/4 v1, 0x0

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 3
    .param p1, "memoryCategory"    # Lcom/bumptech/glide/MemoryCategory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 664
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 665
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 666
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 667
    .local v0, "oldCategory":Lcom/bumptech/glide/MemoryCategory;
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 668
    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 617
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 619
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 620
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 621
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    .line 622
    return-void
.end method

.method unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 822
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 826
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    return-void
.end method
