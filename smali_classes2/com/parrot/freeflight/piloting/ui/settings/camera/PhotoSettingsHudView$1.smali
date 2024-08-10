.class Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$1;
.super Ljava/lang/Object;
.source "PhotoSettingsHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;


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
    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/PhotoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->setPictureFormat(I)V

    .line 82
    return-void
.end method
