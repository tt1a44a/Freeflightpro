.class Lcom/parrot/freeflight/piloting/FpvPilotingActivity$1;
.super Ljava/lang/Object;
.source "FpvPilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/FpvPilotingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/FpvPilotingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/FpvPilotingActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/FpvPilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FpvPilotingActivity$1;->this$0:Lcom/parrot/freeflight/piloting/FpvPilotingActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/FpvPilotingActivity;->finish()V

    .line 55
    return-void
.end method
