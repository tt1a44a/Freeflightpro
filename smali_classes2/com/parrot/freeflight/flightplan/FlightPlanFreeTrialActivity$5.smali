.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;
.super Ljava/lang/Object;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 175
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->access$600(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$5;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->purchase(Landroid/app/Activity;)V

    .line 179
    return-void
.end method