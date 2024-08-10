.class Lcom/parrot/freeflight/piloting/widget/RecordingView$3;
.super Ljava/lang/Object;
.source "RecordingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/RecordingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 142
    if-eqz p2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$100(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$100(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;->onRecordingModeChanged(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$100(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$3;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$100(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$RecordingModeListener;->onRecordingModeChanged(I)V

    goto :goto_0
.end method
