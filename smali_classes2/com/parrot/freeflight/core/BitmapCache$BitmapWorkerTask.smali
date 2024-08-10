.class Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDesiredHeight:I

.field private final mDesiredWidth:I

.field private final mViewReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/BitmapCache;Landroid/view/View;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/BitmapCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
    .param p3, "desiredWidth"    # I
    .param p4, "desiredHeight"    # I

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 124
    iput p3, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredWidth:I

    .line 125
    iput p4, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredHeight:I

    .line 126
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-static {v1}, Lcom/parrot/freeflight/core/BitmapCache;->access$000(Lcom/parrot/freeflight/core/BitmapCache;)Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredWidth:I

    iget v4, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->access$100(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    iget-object v2, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredWidth:I

    iget v5, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mDesiredHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/parrot/freeflight/core/BitmapCache;->access$200(Lcom/parrot/freeflight/core/BitmapCache;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 133
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->mViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 141
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    invoke-static {v1, v0, p1}, Lcom/parrot/freeflight/core/BitmapCache;->access$300(Lcom/parrot/freeflight/core/BitmapCache;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 145
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
