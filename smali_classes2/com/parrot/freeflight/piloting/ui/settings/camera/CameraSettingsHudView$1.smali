.class Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;
.super Ljava/lang/Object;
.source "CameraSettingsHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuStateChanged(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "open"    # Z

    .prologue
    .line 90
    if-eqz p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mLastMenuOpen:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mLastMenuOpen:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->closeMenu()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iput-object p1, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mLastMenuOpen:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mLastMenuOpen:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    goto :goto_0
.end method
