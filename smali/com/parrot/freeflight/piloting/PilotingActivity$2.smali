.class Lcom/parrot/freeflight/piloting/PilotingActivity$2;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;


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
    .line 337
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChangeNeeded(Z)V
    .locals 2
    .param p1, "gyroscopeSensitive"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;->getOrientation(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/PilotingActivity;->setRequestedOrientation(I)V

    .line 342
    return-void
.end method
