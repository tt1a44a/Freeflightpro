.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$2;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchFpvButtonClick()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    .line 130
    return-void
.end method
