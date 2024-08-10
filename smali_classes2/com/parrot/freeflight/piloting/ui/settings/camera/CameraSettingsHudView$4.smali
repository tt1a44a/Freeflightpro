.class Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;
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

.field final synthetic val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$4;->val$backButtonClickListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;->onBackButtonClick()V

    .line 187
    return-void
.end method
