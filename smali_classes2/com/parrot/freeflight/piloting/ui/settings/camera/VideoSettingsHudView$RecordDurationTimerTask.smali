.class Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;
.super Ljava/util/TimerTask;
.source "VideoSettingsHudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDurationTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$RecordDurationTimerTask;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->access$200(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V

    .line 199
    return-void
.end method
