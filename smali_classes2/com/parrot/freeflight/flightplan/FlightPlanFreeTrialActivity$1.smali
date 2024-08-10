.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;
.super Ljava/lang/Object;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionStartEnded(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    .line 92
    return-void
.end method

.method public onPurchaseInformationChanged()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    .line 110
    return-void
.end method

.method public onRegistrationInformationChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$400(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V

    .line 101
    return-void
.end method

.method public onTrialStartEnded(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$002(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;Z)Z

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;->access$200(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$FlightPlanRegistrationAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$1;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$300(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;I)V

    .line 83
    return-void
.end method
