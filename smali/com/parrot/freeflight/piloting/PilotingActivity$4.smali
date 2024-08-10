.class Lcom/parrot/freeflight/piloting/PilotingActivity$4;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/PilotingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/PilotingActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$4;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockedModeEntered()V
    .locals 2

    .prologue
    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$4;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->startLockTask()V

    .line 360
    :cond_0
    return-void
.end method

.method public onLockedModeExited()V
    .locals 4

    .prologue
    .line 364
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 365
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$4;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 367
    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 368
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 373
    .local v1, "isInLockTaskMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$4;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/PilotingActivity;->stopLockTask()V

    .line 377
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "isInLockTaskMode":Z
    :cond_0
    return-void

    .line 368
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .restart local v1    # "isInLockTaskMode":Z
    goto :goto_0
.end method
