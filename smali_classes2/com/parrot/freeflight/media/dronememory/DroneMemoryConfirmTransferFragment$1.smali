.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryConfirmTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<[",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

.field final synthetic val$previewImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;->val$previewImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    check-cast p1, [Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;->onChange([Lcom/parrot/freeflight/media/model/MediaItem;)V

    return-void
.end method

.method public onChange([Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 2
    .param p1, "mediaItems"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/MediaItem;->getThumbnail(Lcom/parrot/freeflight/util/observer/IObserver;)Landroid/graphics/drawable/Drawable;

    .line 112
    :cond_0
    return-void
.end method
