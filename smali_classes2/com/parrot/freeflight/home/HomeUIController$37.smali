.class Lcom/parrot/freeflight/home/HomeUIController$37;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;

.field final synthetic val$mediasCountTakenDuringRun:I

.field final synthetic val$runId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 2265
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->val$runId:Ljava/lang/String;

    iput p3, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->val$mediasCountTakenDuringRun:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 4
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2268
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 2269
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->val$runId:Ljava/lang/String;

    iget v3, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->val$mediasCountTakenDuringRun:I

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getStartingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2270
    .local v0, "droneMemoryIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$37;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2272
    .end local v0    # "droneMemoryIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
