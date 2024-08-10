.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;
.super Ljava/lang/Object;
.source "DroneMemoryInfoController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getMemorySizeInMByte()I

    move-result v0

    .line 97
    .local v0, "memorySizeInMByte":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getUsedMemorySizeInMByte()I

    move-result v1

    .line 98
    .local v1, "memoryUsedSizeInMByte":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-static {v2, v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;II)V

    .line 99
    return-void
.end method
