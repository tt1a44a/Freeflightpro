.class Lcom/parrot/freeflight/piloting/PilotingActivity$5;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;


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
    .line 380
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$5;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelConfigurationChange()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "FF4.Pilot"

    const-string v1, "model configuration changed, returning on Homepage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$5;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->finish()V

    .line 387
    return-void
.end method
