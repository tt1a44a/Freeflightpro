.class Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;
.super Landroid/os/AsyncTask;
.source "FlightDirectorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateThumbnailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private mListener:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;

.field private final mWidth:I

.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;IILcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 328
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mWidth:I

    .line 329
    iput p3, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mHeight:I

    .line 330
    iput-object p4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mListener:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;

    .line 331
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 321
    check-cast p1, [Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->doInBackground([Lcom/parrot/freeflight/core/academy/MediaInfos;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Lcom/parrot/freeflight/core/academy/MediaInfos;)Ljava/util/List;
    .locals 8
    .param p1, "mediaInfosList"    # [Lcom/parrot/freeflight/core/academy/MediaInfos;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    if-eqz p1, :cond_1

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 340
    aget-object v1, p1, v0

    .line 341
    .local v1, "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    iget-object v5, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    iget v6, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mWidth:I

    iget v7, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->access$000(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 342
    .local v3, "videoThumbnail":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 343
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->access$100(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 345
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    .end local v1    # "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v3    # "videoThumbnail":Landroid/graphics/Bitmap;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 321
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "galleryMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gallery/data/GalleryMedia;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 359
    .local v1, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-static {v5}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->access$100(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/parrot/freeflight/gallery/MediaHelper;->getMediaDuration(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)J

    move-result-wide v2

    .line 360
    .local v2, "timeInMillisec":J
    new-instance v5, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-direct {v5, v1, v2, v3}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;-><init>(Lcom/parrot/freeflight/core/academy/MediaInfos;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v1    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v2    # "timeInMillisec":J
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mListener:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;

    if-eqz v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$CreateThumbnailsTask;->mListener:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;

    invoke-interface {v4, v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;->onUpdate(Ljava/util/List;)V

    .line 365
    :cond_1
    return-void
.end method
