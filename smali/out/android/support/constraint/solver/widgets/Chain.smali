.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .registers 9
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 49
    .local v2, "chainsArray":[Landroid/support/constraint/solver/widgets/ChainHead;
    if-nez p2, :cond_b

    .line 50
    const/4 v0, 0x0

    .line 51
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    goto :goto_10

    .line 54
    :cond_b
    const/4 v0, 0x2

    .line 55
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    .line 59
    :goto_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_2f

    .line 60
    aget-object v4, v2, v3

    .line 63
    .local v4, "first":Landroid/support/constraint/solver/widgets/ChainHead;
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 65
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 66
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    goto :goto_2c

    .line 69
    :cond_29
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    .line 59
    .end local v4    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 72
    .end local v3    # "i":I
    :cond_2f
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .registers 65
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p4

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 87
    .local v13, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 88
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 89
    .local v9, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v8, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 90
    .local v8, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 92
    .local v7, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v1, v13

    .line 93
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 94
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 96
    .local v3, "done":Z
    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 97
    .local v4, "totalWeights":F
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 98
    .local v6, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 100
    .local v5, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v15, v1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    move-object/from16 v16, v2

    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v17, v3

    .end local v3    # "done":Z
    .local v17, "done":Z
    if-ne v1, v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    move/from16 v19, v1

    .line 101
    .local v19, "isWrapContent":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "isChainSpread":Z
    const/4 v2, 0x0

    .line 103
    .local v2, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 105
    .local v20, "isChainPacked":Z
    if-nez p2, :cond_52

    .line 106
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    move v1, v3

    .line 107
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v23, "isChainSpread":Z
    if-ne v3, v1, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    .line 108
    .end local v2    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_43
    iget v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    .line 119
    :goto_4b
    move-object v3, v15

    move-object/from16 v20, v16

    .end local v1    # "isChainSpreadInside":Z
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "isChainPacked":Z
    .local v16, "isChainSpreadInside":Z
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4e
    move/from16 v16, v1

    move v15, v2

    goto :goto_72

    .line 110
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v23    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    .restart local v2    # "isChainSpreadInside":Z
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "isChainPacked":Z
    :cond_52
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v3, :cond_58

    const/4 v3, 0x1

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    move v1, v3

    .line 111
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v24, "isChainSpread":Z
    if-ne v3, v1, :cond_63

    const/4 v1, 0x1

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    .line 112
    .end local v2    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_64
    iget v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    const/4 v2, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    .line 119
    :goto_6c
    move-object v3, v15

    move-object/from16 v20, v16

    move/from16 v23, v24

    goto :goto_4e

    .end local v1    # "isChainSpreadInside":Z
    .end local v24    # "isChainSpread":Z
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "isChainPacked":Z
    .local v16, "isChainSpreadInside":Z
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "isChainSpread":Z
    :goto_72
    move-object/from16 v25, v5

    .end local v5    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v17, :cond_154

    .line 120
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    .line 121
    .local v2, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v22, 0x4

    .line 122
    .local v22, "strength":I
    if-nez v19, :cond_80

    if-eqz v15, :cond_82

    .line 123
    :cond_80
    const/16 v22, 0x1

    .line 125
    :cond_82
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 127
    .local v24, "margin":I
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_94

    if-eq v3, v13, :cond_94

    .line 128
    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v24, v24, v1

    .line 131
    .end local v24    # "margin":I
    .local v1, "margin":I
    :cond_94
    move/from16 v1, v24

    if-eqz v15, :cond_9f

    if-eq v3, v13, :cond_9f

    if-eq v3, v9, :cond_9f

    .line 132
    const/16 v22, 0x6

    goto :goto_a5

    .line 133
    :cond_9f
    if-eqz v23, :cond_a5

    if-eqz v19, :cond_a5

    .line 136
    const/16 v22, 0x4

    .line 139
    .end local v22    # "strength":I
    .local v28, "strength":I
    :cond_a5
    :goto_a5
    move/from16 v28, v22

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_d6

    .line 140
    if-ne v3, v9, :cond_bc

    .line 141
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v4

    .end local v4    # "totalWeights":F
    .local v30, "totalWeights":F
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v31, v6

    const/4 v6, 0x5

    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v31, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v5, v4, v1, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_ca

    .line 144
    .end local v30    # "totalWeights":F
    .end local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_bc
    move/from16 v30, v4

    move-object/from16 v31, v6

    .end local v4    # "totalWeights":F
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "totalWeights":F
    .restart local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x6

    invoke-virtual {v10, v4, v5, v1, v6}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 147
    :goto_ca
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v6, v28

    .end local v28    # "strength":I
    .local v6, "strength":I
    invoke-virtual {v10, v4, v5, v1, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_dc

    .line 151
    .end local v30    # "totalWeights":F
    .end local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .local v6, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "strength":I
    :cond_d6
    move/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v6, v28

    .end local v4    # "totalWeights":F
    .end local v28    # "strength":I
    .local v6, "strength":I
    .restart local v30    # "totalWeights":F
    .restart local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_dc
    if-eqz v19, :cond_11c

    .line 152
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_106

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_106

    .line 154
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v32, v1

    move-object/from16 v33, v2

    const/4 v1, 0x0

    const/4 v2, 0x5

    .end local v1    # "margin":I
    .end local v2    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v32, "margin":I
    .local v33, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual {v10, v4, v5, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_10b

    .line 158
    .end local v32    # "margin":I
    .end local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "margin":I
    .restart local v2    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_106
    move/from16 v32, v1

    move-object/from16 v33, v2

    const/4 v1, 0x0

    .end local v1    # "margin":I
    .end local v2    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v32    # "margin":I
    .restart local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_10b
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v5, 0x6

    invoke-virtual {v10, v2, v4, v1, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_120

    .line 164
    .end local v32    # "margin":I
    .end local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "margin":I
    .restart local v2    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_11c
    move/from16 v32, v1

    move-object/from16 v33, v2

    .end local v1    # "margin":I
    .end local v2    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v32    # "margin":I
    .restart local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_120
    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 165
    .local v1, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_140

    .line 166
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 167
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_13e

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v3, :cond_141

    .line 168
    :cond_13e
    const/4 v2, 0x0

    goto :goto_141

    .line 171
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_140
    const/4 v2, 0x0

    .line 173
    :cond_141
    :goto_141
    move-object/from16 v20, v2

    if-eqz v20, :cond_149

    .line 174
    move-object/from16 v2, v20

    .line 178
    move-object v3, v2

    goto :goto_14c

    .line 176
    :cond_149
    const/4 v1, 0x1

    .line 178
    move/from16 v17, v1

    .line 119
    .end local v1    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "strength":I
    .end local v32    # "margin":I
    .end local v33    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_14c
    move-object/from16 v5, v25

    move/from16 v4, v30

    move-object/from16 v6, v31

    goto/16 :goto_72

    .line 181
    .end local v30    # "totalWeights":F
    .end local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .local v6, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_154
    move/from16 v30, v4

    move-object/from16 v31, v6

    .end local v4    # "totalWeights":F
    .end local v6    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "totalWeights":F
    .restart local v31    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_180

    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_180

    .line 182
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 183
    .local v1, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 184
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    .line 183
    const/4 v6, 0x5

    invoke-virtual {v10, v2, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_181

    .line 189
    .end local v1    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_180
    const/4 v6, 0x5

    :goto_181
    if-eqz v19, :cond_1a1

    .line 190
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 192
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 190
    const/4 v5, 0x6

    invoke-virtual {v10, v1, v2, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 196
    :cond_1a1
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 197
    .local v5, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v5, :cond_272

    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_272

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v21, 0x0

    .line 203
    .local v21, "lastWeight":F
    iget-boolean v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v2, :cond_1bc

    iget-boolean v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v2, :cond_1bc

    .line 204
    iget v2, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v2, v2

    .line 207
    move/from16 v30, v2

    :cond_1bc
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1bd
    if-ge v2, v1, :cond_272

    .line 208
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v6, v22

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 209
    .local v6, "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v0, v0, p2

    .line 211
    .local v0, "currentWeight":F
    const/16 v22, 0x0

    cmpg-float v24, v0, v22

    if-gez v24, :cond_200

    .line 212
    move/from16 v43, v0

    .end local v0    # "currentWeight":F
    .local v43, "currentWeight":F
    iget-boolean v0, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v0, :cond_1f5

    .line 213
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v22, p3, 0x1

    aget-object v0, v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v44, v1

    .end local v1    # "count":I
    .local v44, "count":I
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v45, v3

    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v45, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x4

    move-object/from16 v46, v5

    const/4 v5, 0x0

    .end local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v46, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v10, v0, v1, v5, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 215
    nop

    .line 207
    const/4 v3, 0x0

    const/4 v5, 0x6

    goto/16 :goto_265

    .line 217
    .end local v44    # "count":I
    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v1    # "count":I
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_1f5
    move/from16 v44, v1

    move-object/from16 v45, v3

    move-object/from16 v46, v5

    .end local v1    # "count":I
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v44    # "count":I
    .restart local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    .line 219
    move/from16 v43, v0

    goto :goto_208

    .end local v43    # "currentWeight":F
    .end local v44    # "count":I
    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v0    # "currentWeight":F
    .restart local v1    # "count":I
    .restart local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_200
    move/from16 v43, v0

    move/from16 v44, v1

    move-object/from16 v45, v3

    move-object/from16 v46, v5

    .end local v0    # "currentWeight":F
    .end local v1    # "count":I
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v43    # "currentWeight":F
    .restart local v44    # "count":I
    .restart local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :goto_208
    cmpl-float v0, v43, v22

    if-nez v0, :cond_220

    .line 220
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v3, 0x0

    const/4 v5, 0x6

    invoke-virtual {v10, v0, v1, v3, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 222
    goto :goto_265

    .line 225
    :cond_220
    const/4 v3, 0x0

    const/4 v5, 0x6

    if-eqz v4, :cond_25d

    .line 226
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 227
    .local v0, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v1, v1, v18

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 228
    .local v1, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 229
    .local v3, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v5, v5, v18

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 230
    .local v5, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v48, v4

    .end local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v48, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 231
    .local v4, "row":Landroid/support/constraint/solver/ArrayRow;
    move-object/from16 v35, v4

    move/from16 v36, v21

    move/from16 v37, v30

    move/from16 v38, v43

    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move-object/from16 v42, v5

    invoke-virtual/range {v35 .. v42}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 233
    invoke-virtual {v10, v4}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_25f

    .line 236
    .end local v0    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    .end local v48    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_25d
    move-object/from16 v48, v4

    .end local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v48    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_25f
    move-object v0, v6

    .line 237
    .end local v48    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v1, v43

    .line 207
    move-object v4, v0

    move/from16 v21, v1

    .end local v0    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "currentWeight":F
    .restart local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_265
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v44

    move-object/from16 v3, v45

    move-object/from16 v5, v46

    move-object/from16 v0, p0

    const/4 v6, 0x5

    goto/16 :goto_1bd

    .line 254
    .end local v2    # "i":I
    .end local v4    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "lastWeight":F
    .end local v44    # "count":I
    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_272
    move-object/from16 v45, v3

    move-object/from16 v46, v5

    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v9, :cond_318

    if-eq v9, v8, :cond_287

    if-eqz v15, :cond_27d

    goto :goto_287

    .line 275
    :cond_27d
    move-object/from16 v35, v7

    move-object v0, v8

    move-object v10, v9

    move-object/from16 v28, v45

    move-object/from16 v32, v46

    goto/16 :goto_320

    .line 255
    :cond_287
    :goto_287
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 256
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 257
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2a2

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2a3

    :cond_2a2
    const/4 v3, 0x0

    :goto_2a3
    move-object/from16 v18, v3

    .line 258
    .local v18, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2ba

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2bb

    :cond_2ba
    const/4 v3, 0x0

    :goto_2bb
    move-object/from16 v21, v3

    .line 259
    .local v21, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    if-ne v9, v8, :cond_2c9

    .line 260
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 261
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    .line 263
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v5, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v6, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2c9
    move-object v6, v1

    move-object v5, v2

    if-eqz v18, :cond_30b

    if-eqz v21, :cond_30b

    .line 264
    const/high16 v1, 0x3f000000    # 0.5f

    .line 265
    .local v1, "bias":F
    if-nez p2, :cond_2d8

    .line 266
    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 270
    .end local v1    # "bias":F
    .local v22, "bias":F
    :goto_2d5
    move/from16 v22, v1

    goto :goto_2db

    .line 268
    .end local v22    # "bias":F
    .restart local v1    # "bias":F
    :cond_2d8
    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_2d5

    .line 270
    .end local v1    # "bias":F
    .restart local v22    # "bias":F
    :goto_2db
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 271
    .local v24, "beginMargin":I
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 272
    .local v26, "endMargin":I
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v27, 0x5

    move-object/from16 v1, p1

    move-object/from16 v28, v45

    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v3, v18

    move-object/from16 v29, v4

    move/from16 v4, v24

    move-object/from16 v33, v5

    move-object/from16 v32, v46

    .end local v5    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v32, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .local v33, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v5, v22

    move-object/from16 v34, v6

    .end local v6    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v34, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v21

    move-object/from16 v35, v7

    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v29

    move-object v0, v8

    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v8, v26

    move-object v10, v9

    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v10, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_313

    .line 275
    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "bias":F
    .end local v24    # "beginMargin":I
    .end local v26    # "endMargin":I
    .end local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v32    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v33    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v34    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_30b
    move-object/from16 v35, v7

    move-object v0, v8

    move-object v10, v9

    move-object/from16 v28, v45

    move-object/from16 v32, v46

    .line 418
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_313
    move-object v9, v10

    move-object/from16 v59, v14

    goto/16 :goto_46e

    .line 275
    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v32    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .end local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    :cond_318
    move-object/from16 v35, v7

    move-object v0, v8

    move-object v10, v9

    move-object/from16 v28, v45

    move-object/from16 v32, v46

    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v45    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    .restart local v35    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_320
    if-eqz v23, :cond_472

    if-eqz v10, :cond_472

    .line 277
    move-object v1, v10

    .line 278
    .end local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v10

    .line 279
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_333

    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_333

    const/16 v47, 0x1

    goto :goto_335

    :cond_333
    const/16 v47, 0x0

    :goto_335
    move-object v9, v1

    move-object v8, v2

    .line 280
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v47, "applyFixedEquality":Z
    :goto_337
    if-eqz v9, :cond_465

    .line 281
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 282
    move-object v7, v1

    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_33e
    if-eqz v7, :cond_34d

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_34f

    .line 283
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    goto :goto_33e

    .line 285
    :cond_34d
    const/16 v2, 0x8

    :cond_34f
    if-nez v7, :cond_360

    if-ne v9, v0, :cond_354

    goto :goto_360

    .line 337
    :cond_354
    move-object/from16 v34, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v53, v14

    const/16 v14, 0x8

    goto/16 :goto_451

    .line 286
    :cond_360
    :goto_360
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 287
    .local v6, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 288
    .local v5, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_36f

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_370

    :cond_36f
    const/4 v1, 0x0

    .line 289
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_370
    if-eq v8, v9, :cond_37d

    .line 290
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 295
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_37a
    :goto_37a
    move-object/from16 v18, v1

    goto :goto_395

    .line 291
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_37d
    if-ne v9, v10, :cond_37a

    if-ne v8, v9, :cond_37a

    .line 292
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_392

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_393

    :cond_392
    const/4 v3, 0x0

    :goto_393
    move-object v1, v3

    goto :goto_37a

    .line 295
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_395
    const/4 v1, 0x0

    .line 296
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    .line 297
    .local v3, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v4, 0x0

    .line 298
    .local v4, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v20

    .line 299
    .local v20, "beginMargin":I
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 301
    .local v2, "nextMargin":I
    if-eqz v7, :cond_3bf

    .line 302
    move-object/from16 v50, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v50, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 303
    .end local v50    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 304
    move-object/from16 v51, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v51, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v1, v1, v21

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 313
    move-object/from16 v22, v1

    move-object/from16 v21, v3

    goto :goto_3dd

    .line 306
    .end local v51    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3bf
    move-object/from16 v50, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v50    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v1, v1, v21

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 307
    .end local v50    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_3cd

    .line 308
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 310
    :cond_3cd
    move-object/from16 v52, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v52, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v1, v1, v21

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 313
    move-object/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v51, v52

    .end local v3    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v52    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v21, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v22, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v51    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3dd
    if-eqz v51, :cond_3e4

    .line 314
    invoke-virtual/range {v51 .. v51}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v2, v1

    .line 316
    .end local v2    # "nextMargin":I
    .local v24, "nextMargin":I
    :cond_3e4
    move/from16 v24, v2

    if-eqz v8, :cond_3f4

    .line 317
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v20, v20, v1

    .line 319
    :cond_3f4
    if-eqz v5, :cond_447

    if-eqz v18, :cond_447

    if-eqz v21, :cond_447

    if-eqz v22, :cond_447

    .line 320
    move/from16 v1, v20

    .line 321
    .local v1, "margin1":I
    if-ne v9, v10, :cond_408

    .line 322
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 324
    .end local v1    # "margin1":I
    .local v26, "margin1":I
    :cond_408
    move/from16 v26, v1

    move/from16 v1, v24

    .line 325
    .local v1, "margin2":I
    if-ne v9, v0, :cond_418

    .line 326
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 328
    .end local v1    # "margin2":I
    .local v27, "margin2":I
    :cond_418
    move/from16 v27, v1

    const/4 v1, 0x4

    .line 329
    .local v1, "strength":I
    if-eqz v47, :cond_41e

    .line 330
    const/4 v1, 0x6

    .line 332
    .end local v1    # "strength":I
    .local v28, "strength":I
    :cond_41e
    move/from16 v28, v1

    const/high16 v29, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v4, 0x8

    move-object v2, v5

    move-object/from16 v3, v18

    move-object/from16 v53, v14

    const/16 v14, 0x8

    .end local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v53, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v4, v26

    move-object/from16 v33, v5

    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v33, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v5, v29

    move-object/from16 v29, v6

    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v29, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v21

    move-object/from16 v34, v7

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v34, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v22

    move-object/from16 v36, v8

    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v8, v27

    move-object/from16 v37, v9

    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_451

    .line 337
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v20    # "beginMargin":I
    .end local v21    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v24    # "nextMargin":I
    .end local v26    # "margin1":I
    .end local v27    # "margin2":I
    .end local v28    # "strength":I
    .end local v29    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v33    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v51    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_447
    move-object/from16 v34, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v53, v14

    const/16 v14, 0x8

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_451
    invoke-virtual/range {v37 .. v37}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v14, :cond_45b

    .line 338
    move-object/from16 v1, v37

    .line 340
    move-object v8, v1

    goto :goto_45d

    :cond_45b
    move-object/from16 v8, v36

    .end local v36    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_45d
    move-object/from16 v9, v34

    .line 279
    move-object/from16 v20, v34

    move-object/from16 v14, v53

    goto/16 :goto_337

    .line 342
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v47    # "applyFixedEquality":Z
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_465
    move-object/from16 v37, v9

    move-object/from16 v53, v14

    .line 418
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v9, v10

    move-object/from16 v28, v37

    move-object/from16 v59, v53

    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v59, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_46e
    move-object/from16 v10, p1

    goto/16 :goto_617

    .line 342
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_472
    move-object/from16 v53, v14

    const/16 v14, 0x8

    .end local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v16, :cond_612

    if-eqz v10, :cond_612

    .line 344
    move-object v1, v10

    .line 345
    .end local v28    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v10

    .line 346
    .local v2, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_489

    iget v3, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v12, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_489

    const/16 v47, 0x1

    goto :goto_48b

    :cond_489
    const/16 v47, 0x0

    :goto_48b
    move-object v9, v1

    move-object v8, v2

    .line 347
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v47    # "applyFixedEquality":Z
    :goto_48d
    if-eqz v9, :cond_574

    .line 348
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 349
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_493
    if-eqz v1, :cond_4a0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v14, :cond_4a0

    .line 350
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v2, p2

    goto :goto_493

    .line 352
    :cond_4a0
    if-eq v9, v10, :cond_559

    if-eq v9, v0, :cond_559

    if-eqz v1, :cond_559

    .line 353
    if-ne v1, v0, :cond_4a9

    .line 354
    const/4 v1, 0x0

    .line 356
    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4a9
    move-object v7, v1

    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 357
    .restart local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 358
    .restart local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4b9

    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_4ba

    :cond_4b9
    const/4 v1, 0x0

    .line 359
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_4ba
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 360
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v4, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 361
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 362
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 363
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 364
    .local v18, "beginMargin":I
    iget-object v14, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v14, v14, v20

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 366
    .local v14, "nextMargin":I
    if-eqz v7, :cond_4ee

    .line 367
    move-object/from16 v54, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v54, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 368
    .end local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 369
    move-object/from16 v55, v2

    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v55, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_4e8

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_4e9

    :cond_4e8
    const/4 v2, 0x0

    .line 378
    :goto_4e9
    move-object/from16 v56, v1

    move-object/from16 v20, v2

    goto :goto_50a

    .line 371
    .end local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :cond_4ee
    move-object/from16 v54, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 372
    .end local v54    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_4fc

    .line 373
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 375
    :cond_4fc
    move-object/from16 v56, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v56, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 378
    move-object/from16 v20, v1

    move-object/from16 v55, v2

    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v20, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    :goto_50a
    if-eqz v56, :cond_511

    .line 379
    invoke-virtual/range {v56 .. v56}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v14, v1

    .line 381
    :cond_511
    if-eqz v8, :cond_51f

    .line 382
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v18, v18, v1

    .line 384
    :cond_51f
    const/4 v1, 0x4

    .line 385
    .local v1, "strength":I
    if-eqz v47, :cond_523

    .line 386
    const/4 v1, 0x6

    .line 388
    .end local v1    # "strength":I
    .local v21, "strength":I
    :cond_523
    move/from16 v21, v1

    if-eqz v5, :cond_54f

    if-eqz v4, :cond_54f

    if-eqz v55, :cond_54f

    if-eqz v20, :cond_54f

    .line 389
    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v24, v4

    .end local v4    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v24, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v4, v18

    move-object/from16 v26, v5

    const/4 v11, 0x5

    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v26, "begin":Landroid/support/constraint/solver/SolverVariable;
    move/from16 v5, v22

    move-object/from16 v22, v6

    .end local v6    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v22, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v55

    move-object/from16 v27, v7

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v27, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v20

    move-object/from16 v28, v8

    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v8, v14

    move-object/from16 v29, v9

    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_556

    .line 394
    .end local v14    # "nextMargin":I
    .end local v18    # "beginMargin":I
    .end local v20    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "strength":I
    .end local v22    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v24    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v27    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v55    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v56    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_54f
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const/4 v11, 0x5

    .end local v7    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v27    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_556
    move-object/from16 v20, v27

    goto :goto_560

    .end local v27    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_559
    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const/4 v11, 0x5

    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_560
    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_56c

    .line 395
    move-object/from16 v1, v29

    .line 397
    move-object v8, v1

    goto :goto_56e

    :cond_56c
    move-object/from16 v8, v28

    .end local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_56e
    move-object/from16 v9, v20

    .line 346
    const/16 v14, 0x8

    goto/16 :goto_48d

    .line 399
    .end local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_574
    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const/4 v11, 0x5

    .end local v8    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v14, v1, p3

    .line 400
    .local v14, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 401
    .local v9, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    .line 402
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v53

    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 403
    .local v6, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v9, :cond_5ec

    .line 404
    if-eq v10, v0, :cond_5af

    .line 405
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    move-object v5, v10

    move-object/from16 v10, p1

    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v1, v2, v3, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 411
    move-object/from16 v57, v5

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move-object v11, v8

    move-object/from16 v18, v9

    goto :goto_5f7

    .line 406
    .end local v5    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5af
    move-object v5, v10

    move-object/from16 v10, p1

    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v6, :cond_5e2

    .line 407
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/high16 v18, 0x3f000000    # 0.5f

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 408
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    const/16 v22, 0x5

    .line 407
    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v57, v5

    .end local v5    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v57, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v5, v18

    move-object/from16 v58, v6

    .end local v6    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v58, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v24

    move-object/from16 v59, v7

    .end local v7    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v7, v11

    move-object v11, v8

    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v11, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v21

    move-object/from16 v18, v9

    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v18, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_5f7

    .line 411
    .end local v11    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v5    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_5e2
    move-object/from16 v57, v5

    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move-object v11, v8

    move-object/from16 v18, v9

    .end local v5    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v7    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v11    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_5f7

    .end local v11    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v7    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_5ec
    move-object/from16 v58, v6

    move-object/from16 v59, v7

    move-object v11, v8

    move-object/from16 v18, v9

    move-object/from16 v57, v10

    move-object/from16 v10, p1

    .end local v6    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v7    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v11    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v18    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_5f7
    move-object/from16 v1, v58

    .end local v58    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_60d

    move-object/from16 v9, v57

    .end local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v9, v0, :cond_60f

    .line 412
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    const/4 v5, 0x5

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_60f

    .line 418
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v14    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v18    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v28    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v47    # "applyFixedEquality":Z
    .restart local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_60d
    move-object/from16 v9, v57

    .end local v57    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_60f
    :goto_60f
    move-object/from16 v28, v29

    goto :goto_617

    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v29    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_612
    move-object v9, v10

    move-object/from16 v59, v53

    move-object/from16 v10, p1

    .end local v10    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v53    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_617
    if-nez v23, :cond_622

    if-eqz v16, :cond_61c

    goto :goto_622

    .line 443
    :cond_61c
    move-object/from16 v33, v9

    move-object/from16 v14, v59

    goto/16 :goto_6ab

    .line 418
    :cond_622
    :goto_622
    if-eqz v9, :cond_6a7

    .line 419
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 420
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 421
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_637

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_638

    :cond_637
    const/4 v3, 0x0

    :goto_638
    move-object v11, v3

    .line 422
    .local v11, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_642

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_643

    :cond_642
    const/4 v3, 0x0

    .line 423
    .local v3, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_643
    move-object/from16 v14, v59

    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v14, v0, :cond_65c

    .line 424
    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 425
    .local v4, "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_658

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v49, v5

    goto :goto_65a

    :cond_658
    const/16 v49, 0x0

    :goto_65a
    move-object/from16 v3, v49

    .line 427
    .end local v3    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v4    # "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v18, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_65c
    move-object/from16 v18, v3

    if-ne v9, v0, :cond_66a

    .line 428
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, p3

    .line 429
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v3, v4

    .line 431
    .end local v1    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v8, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_66a
    move-object v8, v1

    move-object v7, v2

    if-eqz v11, :cond_6a4

    if-eqz v18, :cond_6a4

    .line 432
    const/high16 v21, 0x3f000000    # 0.5f

    .line 433
    .local v21, "bias":F
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 434
    .local v22, "beginMargin":I
    if-nez v0, :cond_679

    .line 436
    move-object v0, v14

    .line 438
    :cond_679
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    .line 439
    .local v24, "endMargin":I
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v26, 0x5

    move-object/from16 v1, p1

    move-object v3, v11

    move/from16 v4, v22

    move/from16 v5, v21

    move-object/from16 v27, v6

    move-object/from16 v6, v18

    move-object/from16 v29, v7

    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v29, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v27

    move-object/from16 v27, v8

    .end local v8    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v27, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v24

    move-object/from16 v33, v9

    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v33, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_6ab

    .line 443
    .end local v11    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "bias":F
    .end local v22    # "beginMargin":I
    .end local v24    # "endMargin":I
    .end local v27    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v29    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v33    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_6a4
    move-object/from16 v33, v9

    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_6ab

    .end local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v33    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_6a7
    move-object/from16 v33, v9

    move-object/from16 v14, v59

    .end local v9    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v59    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v14    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_6ab
    return-void
.end method
