.class Lcom/parrot/freeflight/piloting/PilotingActivity$3;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;


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
    .line 346
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$3;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHudAccessDenied()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$3;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->finish()V

    .line 350
    return-void
.end method
