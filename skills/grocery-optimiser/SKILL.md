---
name: grocery-optimiser
description: "Help Steve optimise grocery shopping. Use when: user asks about food shopping, grocery prices, meal planning, shopping lists, supermarket comparisons, or delivery options. NOT for: restaurant recommendations or takeaway orders."
metadata: { "openclaw": { "emoji": "🛒" } }
---
# Grocery Shopping Optimiser

Help Steve save money and time on grocery shopping.

## When to Use

USE this skill when:
- Steve asks about grocery shopping or food costs
- Building or updating a shopping list
- Comparing supermarket prices
- Planning meals for the week
- Discussing delivery options or slots
- Reviewing past shopping to find savings

## When NOT to Use

DO NOT use this skill when:
- Restaurant recommendations or dining out
- Takeaway or food delivery apps (Deliveroo, Just Eat)
- Recipe creation (unless tied to meal planning and shopping)
- Dietary or medical nutrition advice

## Context

Steve is UK-based. Relevant supermarkets include Tesco, Sainsburys, Asda, Aldi, Lidl, Morrisons, Ocado, and Waitrose.

Steve wants to optimise for cost while maintaining quality. The end goal is for Wilson to eventually place orders autonomously, but for now the focus is research and strategy.

## Capabilities (Current)

### Shopping Lists
- Maintain a running shopping list at grocery/shopping-list.md in the workspace
- Categorise items (fresh, frozen, cupboard, household)
- Track quantities and preferred brands
- Flag items that are frequently purchased

### Meal Planning
- Help plan weekly meals
- Generate shopping lists from meal plans
- Save meal plans to grocery/meal-plans/YYYY-MM-DD.md in the workspace

### Price Research
- When asked, research current prices using web search
- Compare prices across supermarkets
- Track price history in grocery/price-log.md in the workspace
- Identify own-brand alternatives that save money

### Shopping Analysis
- When Steve shares receipts or spending data, analyse patterns
- Identify areas where money could be saved
- Suggest bulk-buy opportunities
- Track monthly spending in grocery/spending/YYYY-MM.md in the workspace

## File Structure

Keep all grocery data organised under grocery/ in the workspace:
- grocery/shopping-list.md for the current active shopping list
- grocery/price-log.md for price comparisons and history
- grocery/meal-plans/ for weekly meal plans
- grocery/spending/ for monthly spending tracking
- grocery/strategies.md for ongoing savings strategies and notes

Create directories and files as needed. Keep data structured and easy to review.

## Principles

1. UK prices and stores only, always use GBP and UK supermarkets
2. Evidence-based, back up price claims with sources when possible
3. Practical first, suggest savings that are realistic, not extreme couponing
4. Track everything, write shopping data to files so patterns emerge over time
5. Ask before buying, NEVER place an order without Steve explicit approval
6. Privacy, shopping data stays in the workspace, never shared externally

## Payment Capability
Wilson has access to a virtual Revolut card for grocery purchases. Card details are stored in 1Password under the item "Wilsons Credit Card".

### Mandatory Approval Workflow
NEVER retrieve card details or place any order without completing ALL of these steps in order:

1. Build the complete order summary including:
   - Itemised list with quantities and prices
   - Supermarket chosen and why
   - Delivery slot and cost
   - Total cost including delivery
2. Send Steve a Telegram message with the full summary and ask explicitly: "Do you approve this order? Reply APPROVE or REJECT."
3. WAIT for Steve to reply APPROVE in Telegram — do not proceed without it
4. Only after APPROVE is received, retrieve card details from 1Password
5. Place the order using the retrieved card details
6. Confirm order placed and send Steve the order confirmation details
7. Delete card details from memory immediately after use

### Hard Rules
- NEVER place an order without explicit APPROVE from Steve
- NEVER store card details in any file or log
- NEVER proceed if Steve replies REJECT or does not reply
- If anything looks unexpected during checkout, STOP and message Steve
