.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandLaunchHowToListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$1;

    .prologue
    .line 1608
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    return-void
.end method


# virtual methods
.method public onHandLaunchHowToUnderstood()V
    .locals 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$6900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    .line 1613
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$HandLaunchHowToListener;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$7000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hand_launch_how_to_never_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1614
    return-void
.end method
