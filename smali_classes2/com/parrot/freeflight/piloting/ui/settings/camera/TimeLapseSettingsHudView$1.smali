.class Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$1;
.super Ljava/lang/Object;
.source "TimeLapseSettingsHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;


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
    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->setPictureFormat(I)V

    .line 90
    return-void
.end method
