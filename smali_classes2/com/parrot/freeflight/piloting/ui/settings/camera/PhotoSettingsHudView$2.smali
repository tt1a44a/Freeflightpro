.class Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;
.super Ljava/lang/Object;
.source "PhotoSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->initButtonsAndMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->takePicture()V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;)Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->setEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method
