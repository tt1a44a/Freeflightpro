.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$3;
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
        "<",
        "Lcom/parrot/freeflight/media/model/MediaStoreError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .locals 0
    .param p1, "object"    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$3;->onChange(Lcom/parrot/freeflight/media/model/MediaStoreError;)V

    return-void
.end method