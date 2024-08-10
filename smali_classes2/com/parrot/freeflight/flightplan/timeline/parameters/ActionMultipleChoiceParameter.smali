.class public Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
.super Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
.source "ActionMultipleChoiceParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChoices:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "choices"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "selectedValue"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p3}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->mSelectedIndex:I

    .line 26
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->mChoices:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    .prologue
    .line 19
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->mChoices:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createTableRow()Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;Landroid/content/Context;)V

    return-object v0
.end method
