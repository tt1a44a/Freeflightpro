.class Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;
.super Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;
.source "MomentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->setVideoFilePath(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
    .param p2, "frameRate"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->onPostExecute(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->access$100(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$AdapterListener;->onStopScan()V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->access$202(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
