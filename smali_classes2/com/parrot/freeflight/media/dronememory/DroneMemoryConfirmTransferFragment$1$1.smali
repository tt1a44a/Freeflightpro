.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;
.super Ljava/lang/Object;
.source "DroneMemoryConfirmTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;->onChange([Lcom/parrot/freeflight/media/model/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;->this$1:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;->this$1:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;->val$previewImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItem;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;->onChange(Lcom/parrot/freeflight/media/model/MediaItem;)V

    return-void
.end method
