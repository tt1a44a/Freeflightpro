.class Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;
.super Ljava/lang/Object;
.source "TimeLapseSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->initButtonsAndMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$102(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;Z)Z

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$200(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Lcom/parrot/freeflight/view/VerticalSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setVisibility(I)V

    .line 120
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
