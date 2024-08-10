.class public Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
.super Ljava/lang/Object;
.source "RadioButtonSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsRadioButton"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->mName:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->mValue:I

    .line 85
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;->mValue:I

    return v0
.end method
