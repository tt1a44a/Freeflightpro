.class public Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FlightDirectorErrorActivity.java"


# static fields
.field private static final EXTRA_FLIGHT_DIRECTOR_ERROR_MESSAGE:Ljava/lang/String; = "EXTRA_FLIGHT_DIRECTOR_ERROR_MESSAGE"

.field private static final EXTRA_FLIGHT_DIRECTOR_ERROR_TITLE:Ljava/lang/String; = "EXTRA_FLIGHT_DIRECTOR_ERROR_TITLE"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;II)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errorTitle"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "errorMessage"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_FLIGHT_DIRECTOR_ERROR_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v1, "EXTRA_FLIGHT_DIRECTOR_ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v5, 0x7f0c0030

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->setContentView(I)V

    .line 44
    const v5, 0x7f0a0465

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0a0464

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "contentView":Landroid/widget/TextView;
    const v5, 0x7f0a006d

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    .local v1, "dismissButton":Landroid/widget/Button;
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    new-instance v5, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_FLIGHT_DIRECTOR_ERROR_TITLE"

    const v7, 0x7f11021c

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 64
    .local v3, "errorTitle":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_FLIGHT_DIRECTOR_ERROR_MESSAGE"

    const v7, 0x7f110214

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "errorMessage":I
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    return-void
.end method
