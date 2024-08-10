.class Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;
.super Ljava/lang/Object;
.source "CameraSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->initButtonsAndMenus(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

.field final synthetic val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;->val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;->val$settingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;->onSettingsButtonClick(Landroid/view/View;I)V

    .line 200
    return-void
.end method
