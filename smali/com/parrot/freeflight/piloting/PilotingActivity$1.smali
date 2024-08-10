.class Lcom/parrot/freeflight/piloting/PilotingActivity$1;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


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
    .line 329
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->onBackPressed()V

    .line 333
    return-void
.end method
