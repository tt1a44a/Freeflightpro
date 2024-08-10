.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;
.super Ljava/lang/Object;
.source "DroneMemoryController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaNamesLoaded()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v1

    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 226
    .local v0, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public onMediaObjectUpdated(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 2
    .param p1, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1302(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Z)Z

    .line 232
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;ZSS)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z
    .param p3, "photoCount"    # S
    .param p4, "videoCount"    # S

    .prologue
    const/4 v2, 0x1

    .line 247
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1302(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Z)Z

    .line 248
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1702(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 249
    if-nez p2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1802(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Z)Z

    .line 251
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne p1, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 255
    .local v0, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    goto :goto_0
.end method
