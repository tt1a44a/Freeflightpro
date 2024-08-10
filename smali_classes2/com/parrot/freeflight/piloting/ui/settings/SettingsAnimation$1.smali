.class final Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCategory:I

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/core/model/Model;

.field final synthetic val$model:Lcom/parrot/freeflight/core/model/Model;

.field final synthetic val$productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field final synthetic val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

.field final synthetic val$remoteControllerModel:Lcom/parrot/freeflight/core/model/Model;

.field final synthetic val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$model:Lcom/parrot/freeflight/core/model/Model;

    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$localSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$remoteControllerModel:Lcom/parrot/freeflight/core/model/Model;

    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iput-object p6, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iput p7, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$finalCategory:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$settingsView:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$model:Lcom/parrot/freeflight/core/model/Model;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$localSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$remoteControllerModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$relativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$productColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;->val$finalCategory:I

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 54
    return-void
.end method
