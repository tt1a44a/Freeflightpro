.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FpvPermissionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 2
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
    .line 748
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 749
    const-string v0, "FF4.Fpv"

    const-string v1, "fpv permissions granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$2100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V

    .line 757
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$2200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$2200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$PermissionListener;->onPermissionDenied()V

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$FpvPermissionListener;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->stopFpv()V

    goto :goto_0
.end method
